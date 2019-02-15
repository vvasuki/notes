function out = fnmai(A, B0, opt)
%
% FNMAi : nonnegative matrix factorization 
%         based on the Alternating Least Squares
%         and the projection with fixed set.
% function out = fnmai(A, B0, opt)
%
% On output, 
% out.B and out.C are non-negative factors, out.obj is objective value
%
% On input, 
% A is the target matrix 
% B0 is the initial B.
%
% OPTIONS -- This structure contains important options that control how the
% optimization procedure runs. To obtain a default structure the user can
% use 'options = solopt'. Use 'help solopt' to get a description of
% what the individual options mean.
%
% See also: solopt
%
% Version 0.2 (c) 2009  Dongmin Kim 
% 

out = getout_nma(B0);
out.algo = 'NNMA - FNMAi';
out.start_time = clock;

for iter = 1 : opt.max_func_evals
    if issparse(out.B)
        R = qr(out.B);
    else
        R = triu(qr(out.B));
    end
    
    out.C = R \ (R' \ (out.B' * A));
    grad = out.B' * (A - out.B * out.C);
    fidx = find(out.C == 0 & grad < 0);
    out.C = out.C + R \ (R' \ grad);
    out.C(out.C < 0) = 0;
    out.C(fidx) = 0;
    
    if issparse(out.C)
        R = qr(out.C');
    else
        R = triu(qr(out.C'));
    end
    
    grad = out.C * (A' - out.C' * out.B');
    fidx = find(out.B == 0 & grad' < 0);
    out.B = (R \ (R' \ (out.C * A')))';
    out.B = out.B + (R \ (R' \ grad))';
    out.B(out.B < 0) = 0;
    out.B(fidx) = 0;

    % A deficiency of the inexact methods, they are prone to generate
    % rank-deficient factors.
    if any(isnan(out.B)) | any(isnan(out.C))
        warning(['Hessian w.r.t B or C becomes singular thus cannot ' ...
                 'proceed, try with a smaller # of iterations'])
        break;
    end
        
    if rank(out.B) < out.rank | rank(out.C) < out.rank
        break;
    end

    if opt.verbose == 1 & mod(iter, 20) == 0
        out.obj = norm(A - out.B * out.C, 'fro');
        fprintf(' Iter %3d: obj = %e \n', iter, out.obj);
    end
end

out.iter = iter;
out.time = etime(clock, out.start_time);
out.obj = norm(A - out.B * out.C, 'fro');

