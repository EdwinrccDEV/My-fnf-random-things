function onEvent(event) {
  if(event.event.name == "RGBA shader control")
  {
var shaderName = event.event.params[0];
var chsn = event.event.params[1];
var chn = event.event.params[2];
var rd = event.event.params[3];
var gn = event.event.params[4];
var bl = event.event.params[5];
var ap = event.event.params[6];
var ssz = event.event.params[7];
var shb = event.event.params[8];
var xy = event.event.params[9];
var rm = event.event.params[10];

var char = strumLines.members[chn].characters[0];

if(rm == true) {
  char.shader = new CustomShader(shaderName);
  char.shader.color = [0, 0, 0, 0];
    char.shader.shadowLength = 0;
    char.color = FlxColor.fromHSL(char.color.hue, char.color.saturation, 1, 1); 
} else {
    char.shader = new CustomShader(shaderName);
    char.shader.color = [rd, gn, bl, ap];
    char.shader.shadowLength = ssz;
    char.shader.flipped = xy;
    char.color = FlxColor.fromHSL(char.color.hue, char.color.saturation, shb, shb); 
}
}
}
