import Component from "@glimmer/component";
import { fn } from "@ember/helper";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { eq } from "truth-helpers";
import DButton from "discourse/components/d-button";
import DropdownMenu from "discourse/components/dropdown-menu";

export default class FontOptions extends Component {
  @service fontDensity;

  @action
  setFont(font) {
    this.fontDensity.setFont(font);
  }

  <template>
    <DropdownMenu class="density-menu" as |dropdown|>
      {{#each this.fontDensity.fontOptions as |font|}}
        <dropdown.item>
          <DButton
            @action={{(fn this.setFont font.value)}}
            class={{if (eq font.value this.fontDensity.userFont) "selected" ""}}
          >
            {{font.label}}
          </DButton>
        </dropdown.item>
      {{/each}}
    </DropdownMenu>
  </template>
}
