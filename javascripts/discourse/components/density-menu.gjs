import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { eq } from "truth-helpers";
import icon from "discourse-common/helpers/d-icon";
import DMenu from "float-kit/components/d-menu";
import DensityOptions from "../components/density-options";
import FontOptions from "../components/font-options";


export default class DensityMenu extends Component {
  @service fontDensity;

  @action
  setDensity(value) {
    this.fontDensity.setDensity(value);
  }

  <template>
    <DMenu class="btn no-text btn-icon btn-flat sidebar-footer-actions-button">
      <:trigger>
      {{icon "sliders"}}
      </:trigger>
      <:content>
        <DensityOptions />
        {{! <FontOptions /> }}
      </:content>
    </DMenu>
  </template>
}
