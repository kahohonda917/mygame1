open UniverseJs
open Color
open Image
open World
open TransformToInt

type world_t = {
  apple : int * int;
  banana : int * int;
  peach : int * int;
  melon : int * int;
  orange : int * int;
  apple2 : int * int;
  banana2 : int * int;
  peach2 : int * int;
  melon2 : int * int;
  orange2 : int * int;
  apple3 : int * int;
  banana3 : int * int;
  peach3 : int * int;
  melon3 : int * int;
  orange3 : int * int;
  apple4 : int * int;
  banana4 : int * int;
  peach4 : int * int;
  melon4 : int * int;
  orange4 : int * int;
  
  score : int;
  time_score : int * int * int;
  mi_score : int * int * int;
}
let initial_world = {apple = (60, 0);
                     banana = (170, 0);
                     peach = (280, 0);
                     melon = (390, 0);
                     orange = (510, 0);
                     apple2 = (0, 280);
                     banana2 = (0, 170);
                     peach2 = (0, 60);
                     melon2 = (0, 390);
                     orange2 = (0, 510);
                     apple3 = (560, 60);
                     banana3 = (560, 170);
                     peach3 = (560, 280);
                     melon3 = (560, 390);
                     orange3 = (560, 510);
                     apple4 = (390, 560);
                     banana4 = (170, 560);
                     peach4 = (280, 560);
                     melon4 = (60, 560);
                     orange4 = (510, 560);
                     score = 0;
                     time_score = (0,-50,-50);
                     mi_score = (0,-50,-50) }
let width = 560
let height = 560
let apple = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/apple.png" 100 100
let banana = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/banana.png" 100 100
let peach = read_image "images/suika.png" 100 100
let melon = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/melon.png" 100 100
let orange = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/orange.png" 100 100
let apple2 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/apple.png" 100 100
let banana2 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/banana.png" 100 100
let peach2 = read_image "images/suika.png" 100 100
let melon2 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/melon.png" 100 100
let orange2 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/orange.png" 100 100
let apple3 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/apple.png" 100 100
let banana3 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/banana.png" 100 100
let peach3 = read_image "images/suika.png" 100 100
let melon3 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/melon.png" 100 100
let orange3 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/orange.png" 100 100
let apple4 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/apple.png" 100 100
let banana4 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/banana.png" 100 100
let peach4 = read_image "images/suika.png" 100 100
let melon4 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/melon.png" 100 100
let orange4 = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/orange.png" 100 100



let background = read_image "http://pllab.is.ocha.ac.jp/~asai/picture/images/background.png" 560 560
let draw {apple = (x, y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
          apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
          apple3 = (a3x, a3y);banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
          apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
          score = score;time_score = (s, sx, sy);mi_score = (ms, msx, msy)} =
  place_image (text (string_of_int score) 60 Color.slateGray ) (60, 60)
    (place_image (text ("+"^string_of_int s) 20 Color.black) (sx, sy)
    (place_image (text ("-"^string_of_int ms) 20 Color.black) (msx, msy)
    (place_image peach (px, py)
    (place_image banana (bx, by)
    (place_image melon (mx, my)
    (place_image orange (ox, oy)
    (place_image apple (x, y)
    (place_image banana2 (b2x, b2y)
    (place_image peach2 (p2x, p2y)
    (place_image melon2 (m2x, m2y)
    (place_image orange2 (o2x, o2y)
    (place_image apple2 (ax, ay)
    (place_image apple3 (a3x, a3y)
    (place_image banana3 (b3x, b3y)
    (place_image peach3 (p3x, p3y)
    (place_image melon3 (m3x, m3y)
    (place_image orange3 (o3x, o3y)
    (place_image apple4 (a4x, a4y)
    (place_image banana4 (b4x, b4y)
    (place_image peach4 (p4x, p4y)
    (place_image melon4 (m4x, m4y)
    (place_image orange4 (o4x, o4y)
    (place_image (rectangle 560 560 peachPuff2) (280,280) (empty_scene width height))))))))))))))))))))))))


(* up_fruit : int*int -> int *)
let up_fruit (x, y) =
  if y >= 560  then (Random.int 560 ,0)  else (x , y)

(* up_fruit2 : int*int -> int *)
let up_fruit2 (x, y) =
  if x >= 560  then (0,Random.int 560)  else (x , y)

(* up_fruit3 : int*int -> int *)
let up_fruit3 (x, y) =
  if x <= 0  then (560,Random.int 560)  else (x , y)

(* up_fruit4 : int*int -> int *)
let up_fruit4 (x, y) =
  if y <= 0  then (Random.int 560, 560)  else (x , y)


let on_tick {apple = (x, y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
             apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
             apple3 = (a3x, a3y);banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
             apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
             score = score; time_score = (s,sx,sy);mi_score = (ms, msx, msy)} =
  {apple = up_fruit (x, (y+5));
   banana = up_fruit (bx, (by+7));peach = up_fruit (px, (py+8));
   melon = up_fruit (mx, (my+6));orange = up_fruit (ox, (oy+10));
   apple2 = up_fruit2 (ax+3, ay);
   banana2 = up_fruit2 (b2x+2 , b2y);peach2 = up_fruit2 (p2x+6, p2y);
   melon2 = up_fruit2 (m2x+8, m2y);orange2 = up_fruit2 (o2x+7, o2y);
   apple3 = up_fruit3 (a3x-3, a3y);
   banana3 = up_fruit3 (b3x-2 , b3y);peach3 = up_fruit3 (p3x-6, p3y);
   melon3 = up_fruit3 (m3x-8, m3y);orange3 = up_fruit3 (o3x-7, o3y);
   apple4 = up_fruit4 (a4x, (a4y-5));
   banana4 = up_fruit4 (b4x, (b4y-7));peach4 = up_fruit4 (p4x, (p4y-8));
   melon4 = up_fruit4 (m4x, (m4y-6));orange4 = up_fruit4 (o4x, (o4y-10));
   score = score; time_score = (s,sx,sy);mi_score = (ms, msx, msy)}
  
let on_mouse {apple = (x, y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
              apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
              apple3 = (a3x, a3y);banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
              apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
              score = score; time_score = (s,sx,sy);mi_score = (ms, msx, msy)} mouse_x mouse_y event =
  if (event = "button_down") && (x-50 < mouse_x) && (mouse_x < x+50)&&(y-50 < mouse_y) && (mouse_y < y+50)
  then
    {apple = (Random.int 560, -50);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y);banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score + 10; time_score = (10,x+10,y+10);mi_score = (ms, msx, msy)}
  else if (event = "button_down") && (ax-50 < mouse_x) && (mouse_x < ax+50)&&(ay-50 < mouse_y) && (mouse_y < ay+50)
  then
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (-50, Random.int 560);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y);banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score + 10; time_score = (10,ax+10,ay+10);mi_score = (ms, msx, msy)}
  else if (event = "button_down") && (a3x-50 < mouse_x) && (mouse_x < a3x+50)&&(a3y-50 < mouse_y) && (mouse_y < a3y+50)
  then
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (610,Random.int 560 );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score + 10; time_score = (10,a3x+10,a3y+10);mi_score = (ms, msx, msy)}
  else if (event = "button_down") && (a4x-50 < mouse_x) && (mouse_x < a4x+50)&&(a4y-50 < mouse_y) && (mouse_y < a4y+50)
  then
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (Random.int 560, 610);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score + 10; time_score = (10,a4x+10,a4y+10);mi_score = (ms, msx, msy)}
  else if (event = "button_down") &&
          ((bx-50 < mouse_x) && (mouse_x < bx+50)&&
           (by-50 < mouse_y) && (mouse_y < by+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, bx + 10, by + 10)}
  else if (event = "button_down") &&
          ((b2x-50 < mouse_x) && (mouse_x < b2x+50)&&
           (b2y-50 < mouse_y) && (mouse_y < b2y+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, b2x + 10, b2y + 10)}

  else if (event = "button_down") &&
          ((b3x-50 < mouse_x) && (mouse_x < b3x+50)&&
           (b3y-50 < mouse_y) && (mouse_y < b3y+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, b3x + 10, b3y + 10)}

  else if (event = "button_down") &&
          ((b4x-50 < mouse_x) && (mouse_x < b4x+50)&&
           (b4y-50 < mouse_y) && (mouse_y < b4y+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, b4x + 10, b4y + 10)}

  else if (event = "button_down") &&
          ((px-50 < mouse_x) && (mouse_x < px+50)&&
           (py-50 < mouse_y) && (mouse_y < py+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, px + 10, py + 10)}
  else if (event = "button_down") &&
          ((p2x-50 < mouse_x) && (mouse_x < p2x+50)&&
           (p2y-50 < mouse_y) && (mouse_y < p2y+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, p2x + 10, p2y + 10)}

  else if (event = "button_down") &&
          ((p3x-50 < mouse_x) && (mouse_x < p3x+50)&&
           (p3y-50 < mouse_y) && (mouse_y < p3y+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, p3x + 10, p3y + 10)}

  else if (event = "button_down") &&
          ((p4x-50 < mouse_x) && (mouse_x < p4x+50)&&
           (p4y-50 < mouse_y) && (mouse_y < p4y+50))
  then
    
    {apple = (x,y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y );banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score - 50; time_score = (s,-50,-50);mi_score = (50, p4x + 10, p4y + 10)}
    
  else
    {apple = (x, y);banana = (bx,by);peach = (px,py);melon = (mx,my);orange = (ox,oy);
     apple2 = (ax, ay);banana2 = (b2x,b2y);peach2 = (p2x,p2y);melon2 = (m2x,m2y);orange2 = (o2x,o2y);
     apple3 = (a3x, a3y);banana3 = (b3x,b3y);peach3 = (p3x,p3y);melon3 = (m3x,m3y);orange3 = (o3x,o3y);
     apple4 = (a4x, a4y);banana4 = (b4x,b4y);peach4 = (p4x,p4y);melon4 = (m4x,m4y);orange4 = (o4x,o4y);
     score = score; time_score = (s,-50,-50);mi_score = (ms, -50, -50)}
       
;; big_bang initial_world
  ~width:width
  ~height:height
  ~to_draw:draw
  ~on_tick:on_tick
  ~on_mouse:on_mouse
  ~rate:50
