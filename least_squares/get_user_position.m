function user_position = get_user_position(meas_vector, satellite_pos)
% Assume that the inputs are matrices already
% Input Args:
%           meas_vector - Measurement Vectors in ECEF frame (1x1)
%           satellite_pos - Satellite position vectors (3x3)
% Output Args:
%           user_position - User position based on the given psuedo-ranges 
    
satellite_pos = transpose(satellite_pos);
satellite_pos = satellite_pos(1:3, 1:3)
meas_vector = meas_vector(1:3)

user_position = (inv(satellite_pos)).*(meas_vector);

end