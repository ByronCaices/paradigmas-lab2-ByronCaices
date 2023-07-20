
:- module(tda_file_20915795_CaicesLima, [file/7,file/3,getFileLocation/2,getFileName/2,getText/2,setFileLocation/3]).

% TDA File
%File/6
/* File(FileName,CreateDate,ModDate,Location,Creator,[FileNameMin,CreateDate,ModDate,LocationMin,Creator]):-
    string_lower(FileName,FileNameMin),
    string_lower(Location,LocationMin). */


file(FileName,CreateDate,ModDate,Location,Creator,Text,[FileName,CreateDate,ModDate,Location,Creator,Text]).

file(FileName,Text,File):-
    string_lower(FileName,FileNameMin),
    file(FileNameMin,"","","",[],Text,File).


getFileLocation(File,Location):-
    file(_,_,_,Location,_,_,File).

getFileName(File,Name):-
    file(Name,_,_,_,_,_,File).

getText(File,Text):-
    file(_,_,_,_,_,Text,File).

setFileLocation(File,NewLocation,NewFile):-
    file(FileName,CreateDate,ModDate,_,Creator,Text,File),
    file(FileName,CreateDate,ModDate,NewLocation,Creator,Text,NewFile).