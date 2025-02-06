import Component from "@glimmer/component";
import { concat } from "@ember/helper";
import { service } from "@ember/service";
import bodyClass from "discourse/helpers/body-class";

export default class ClassAdder extends Component {
  @service fontDensity;

  get fontFamilyStyle() {
    return `:root { --font-family: var(--font-family-${this.fontDensity.userFont}) !important; }`;
  }

  <template>
    {{bodyClass (concat "f-d-" this.fontDensity.userDensity)}}
  </template>
}