import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import DMenu from "discourse/float-kit/components/d-menu";
import icon from "discourse/helpers/d-icon";
import DensityOptions from "../components/density-options";

export default class DensityMenu extends Component {
  @service fontDensity;

  @action
  setDensity(value) {
    this.fontDensity.setDensity(value);
  }

  <template>
    <DMenu
      class="btn no-text btn-icon btn-flat sidebar-footer-actions-button density-menu-trigger"
    >
      <:trigger>
        {{icon "sliders"}}
      </:trigger>
      <:content>
        <DensityOptions />
      </:content>
    </DMenu>
  </template>
}
