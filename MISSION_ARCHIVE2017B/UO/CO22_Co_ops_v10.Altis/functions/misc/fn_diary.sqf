/*
* Author: alganthe
* Adds the required briefing entries.
*
* Arguments:
* >NONE
*
* Return Value:
* nothing
*/
player createDiarySubject ["Co-ops", "Co-ops"];


//-------------------------------------------------- Mission related, don't touch

player createDiaryRecord ["Co-ops", ["Credits",
"
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>Player icons on map:</font> <font size= 14>Quicksilver</font>
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>Glorious PFHs:</font> <font size= 14>The CBA_A3 team, check the headers of the functions for more specific informations</font>
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>TAW VD:</font> <font size= 14>Bryan 'Tonic' Boardwine</font>
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>The rest:</font> <font size= 14>Alganthe</font>
<br/>
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>Contributors:</font>
<br/> <font size= 14>yourstruly</font>
"
]];

player createDiaryRecord ["Co-ops", ["Issues",
"
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>You have issues to report?</font> <execute expression=""copyToClipboard 'https://github.com/alganthe/Co-ops/issues';"">https://github.com/alganthe/Co-ops/issues</execute>
<br/>
<br/> <font face= 'PuristaLight' color= '#D3D3D3' size= 14>Known issues:</font> <font size= 14>None at the moment!</font>
"
]];
