import Component from "@glimmer/component";
import { concat } from "@ember/helper";
import { service } from "@ember/service";
// import { htmlSafe } from "@ember/template";
import bodyClass from "discourse/helpers/body-class";

export default class ClassAdder extends Component {
  @service fontDensity;

  get fontFamilyStyle() {
    return `:root { --font-family: var(--font-family-${this.fontDensity.userFont}) !important; }`;
  }

  <template>
    {{!-- <style>
      {{htmlSafe this.fontFamilyStyle}}
    </style> --}}
    {{bodyClass (concat "f-d-" this.fontDensity.userDensity)}}
  </template>
}
