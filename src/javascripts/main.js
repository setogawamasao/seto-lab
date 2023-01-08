import "../stylesheets/main.scss";
import "../images/meta/og.png";
import "../images/meta/favicon.ico";
import "../images/meta/apple-touch-icon.png";
import "../images/meta/favicon-32x32.png";
import "../images/meta/favicon-16x16.png";
import "../images/meta/site.webmanifest";
import "../images/meta/safari-pinned-tab.svg";

const p5 = require("p5");
let isLoaded = false;
let glitch;
let playful;
import imgSrc from "../images/top/main_title.png";
import Glitch from "./glitch";

function initP5(p) {
  p.setup = function () {
    // seto-labの画像を削除
    const topTitleElement = document.getElementById("seto-title");
    if (topTitleElement) {
      topTitleElement.remove();
    }
    // キャンバス設定
    const canvas = p.createCanvas(673, 131);
    canvas.parent("P5Canvas");
    p.loadImage(imgSrc, function (img) {
      glitch = new Glitch(img, p);
      isLoaded = true;
    });
  };

  p.draw = function () {
    p.clear();
    if (isLoaded) {
      glitch.show();
    }
  };
}

const app = new p5(initP5, document.body);
