% Ceci est une fonction pour calculer la variation de l'angle entre deux
% vectors

function dteta = algorithme(InX,InY,InZ,acc1,acc2)

D = sqrt(((InX(acc1,:)-InX(acc2,:)) .^2)+((InY(acc1,:)-InY(acc2,:)) .^2)+((InZ(acc1,:)-InZ(acc2,:)) .^2));

dteta = diff(2*acos(sqrt(1-D .^2/4)));

end 