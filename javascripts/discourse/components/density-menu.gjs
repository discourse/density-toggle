import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import icon from "discourse/helpers/d-icon";
import DMenu from "float-kit/components/d-menu";
import DensityOptions from "../components/density-options";

export default class DensityMenu extends Component {
  @service fontDensity;

  @action
  setDensity(value) {
    this.fontDensity.setDensity(value);
  }

  <template>
    <DMenu
      @triggerClass="btn no-text btn-icon btn-flat sidebar-footer-actions-button density-menu"
      @modalForMobile={{true}}
      @identifier="density-menu"
      @inline={{true}}
      @autofocus={{true}}
      @placement="bottom"
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
