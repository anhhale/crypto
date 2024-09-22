function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = cdbc_flex.static_g1_tt(T, y, x, params);
    end
    residual = cdbc_flex.static_resid(T, y, x, params, false);
    g1       = cdbc_flex.static_g1(T, y, x, params, false);

end
