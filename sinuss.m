% --- Callback pour le bouton 'sin' ---
function sin_Callback(hObject, eventdata, handles)
    x = inputdlg('Entrez un nombre :');
    x = str2double(x);
    if ~isnan(x)
        result = sin(x);
        msgbox(['Le sinus de ', num2str(x), ' est ', num2str(result)]);
    else
        msgbox('Veuillez entrer un nombre valide.', 'Erreur', 'error');
    end

% --- Callback pour le bouton 'cos' ---
function cos_Callback(hObject, eventdata, handles)
    x = inputdlg('Entrez un nombre :');
    x = str2double(x);
    if ~isnan(x)
        result = cos(x);
        msgbox(['Le cosinus de ', num2str(x), ' est ', num2str(result)]);
    else
        msgbox('Veuillez entrer un nombre valide.', 'Erreur', 'error');
    end

% --- Callback pour le bouton 'tan' ---
function tan_Callback(hObject, eventdata, handles)
    x = inputdlg('Entrez un nombre :');
    x = str2double(x);
    if ~isnan(x)
        result = tan(x);
        msgbox(['La tangente de ', num2str(x), ' est ', num2str(result)]);
    else
        msgbox('Veuillez entrer un nombre valide.', 'Erreur', 'error');
    end

% --- Callback pour le bouton 'log' ---
function log_Callback(hObject, eventdata, handles)
    x = inputdlg('Entrez un nombre :');
    x = str2double(x);
    if ~isnan(x) && x > 0
        result = log(x);
        msgbox(['Le logarithme naturel de ', num2str(x), ' est ', num2str(result)]);
    else
        msgbox('Veuillez entrer un nombre valide (strictement positif).', 'Erreur', 'error');
    end

% --- Callback pour le bouton 'exp' ---
function exp_Callback(hObject, eventdata, handles)
    x = inputdlg('Entrez un nombre :');
    x = str2double(x);
    if ~isnan(x)
        result = exp(x);
        msgbox(['L''exponentielle de ', num2str(x), ' est ', num2str(result)]);
    else
        msgbox('Veuillez entrer un nombre valide.', 'Erreur', 'error');
    end
