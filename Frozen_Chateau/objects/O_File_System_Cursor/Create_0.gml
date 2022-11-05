/// @description 

if (file_exists("SaveFile.ini")){
	arr = ["Continue", "New Game", "Options", "Exit"];
} else {
	arr = ["New Game", "Options", "Exit"];
}

ind = 0;
word = arr[ind];
max_ind = array_length(arr);
x = 80;
