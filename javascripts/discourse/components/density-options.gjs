import Component from "@glimmer/component";
import { fn } from "@ember/helper";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { eq } from "truth-helpers";
import DButton from "discourse/components/d-button";
import DropdownMenu from "discourse/components/dropdown-menu";

export default class DensityOptions extends Component {
  @service fontDensity;

  @action
  setDensity(value) {
    this.fontDensity.setDensity(value);
  }

  <template>
    <DropdownMenu class="density-menu" as |dropdown|>
      {{#each this.fontDensity.densityOptions as |density|}}
        <dropdown.item @value={{density.value}}>
          <DButton
            @action={{fn this.setDensity density.value}}
            class={{if
              (eq density.value this.fontDensity.userDensity)
              "selected"
              ""
            }}
          >
            {{density.label}}
          </DButton>
        </dropdown.item>
      {{/each}}
    </DropdownMenu>
  </template>
}
