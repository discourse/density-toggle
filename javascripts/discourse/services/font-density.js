import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";
import Service from "@ember/service";

export default class FontDensity extends Service {
  @tracked userDensity = localStorage.getItem("topicListSpacing");
  @tracked userFont = localStorage.getItem("siteFont");

  get densityOptions() {
    return [
      { label: "compact", value: "compact" },
      { label: "cozy", value: "cozy" },
      { label: "default", value: "default" },
    ];
  }

  get fontOptions() {
    return [
      {
        label: "Arial",
        value: "arial",
      },
      {
        label: "System",
        value: "system",
      },
      {
        label: "Open Sans",
        value: "open_sans",
      },
      {
        label: "Oxanium",
        value: "oxanium",
      },
      {
        label: "Roboto",
        value: "roboto",
      },
      {
        label: "Lato",
        value: "lato",
      },
      {
        label: "Inter",
        value: "inter",
      },
      {
        label: "NotoSansJP",
        value: "noto_sans_jp",
      },
      {
        label: "Montserrat",
        value: "montserrat",
      },
      {
        label: "RobotoCondensed",
        value: "roboto_condensed",
      },
      {
        label: "SourceSansPro",
        value: "source_sans_pro",
      },
      {
        label: "Oswald",
        value: "oswald",
      },
      {
        label: "Raleway",
        value: "raleway",
      },
      {
        label: "RobotoMono",
        value: "roboto_mono",
      },
      {
        label: "Poppins",
        value: "poppins",
      },
      {
        label: "NotoSans",
        value: "noto_sans",
      },
      {
        label: "RobotoSlab",
        value: "roboto_slab",
      },
      {
        label: "Merriweather",
        value: "merriweather",
      },
      {
        label: "Ubuntu",
        value: "ubuntu",
      },
      {
        label: "PTSans",
        value: "pt_sans",
      },
      {
        label: "PlayfairDisplay",
        value: "playfair_display",
      },
      {
        label: "Nunito",
        value: "nunito",
      },
      {
        label: "Lora",
        value: "lora",
      },
      {
        label: "Mukta",
        value: "mukta",
      },
      {
        label: "Helvetica",
        value: "helvetica",
      },
    ];
  }

  @action
  setFont(font) {
    this.userFont = font;
    localStorage.setItem("siteFont", font);
  }

  @action
  setDensity(density) {
    this.userDensity = density;
    localStorage.setItem("topicListSpacing", density);
  }
}
