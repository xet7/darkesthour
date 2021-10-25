var html = "";

html += '<h3>Open Source Projects</h3>\n';
html += '<ul>\n';

function add_project(name) {
    html += '<li><a href="/' + name + '">' + name + '</a></li>\n';
}

//add_project("fs-dosbox");
//add_project("fs-game-center");
//add_project("fs-hatari");
//add_project("fs-mame");
add_project("fs-mednafen");
add_project("fs-uae");
add_project("fs-uae-arcade");
add_project("fs-uae-launcher");
add_project("fs-uae-plugin-qemu-uae");
//add_project("fs-vice");
add_project("libfs-capsimage");
add_project("python-lhafile");

html += '</ul>\n';

html += '<h3>Amiga Stuff</h3>\n';
html += '<ul>\n';

add_project("m68k-amigaos-toolchain");

html += '</ul>\n';


document.getElementById("sidebar").innerHTML = html;
