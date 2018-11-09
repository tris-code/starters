import { Component, Prop, State } from '@stencil/core';

@Component({
  tag: 'app-profile',
  styleUrl: 'app-profile.css'
})
export class AppProfile {
  @State() state = false;
  @Prop() name: string;

  apiRootUrl: string = 'http://localhost:8080/api/v0';
  @State() welcome: String;

  componentWillLoad() {
    fetch(`${this.apiRootUrl}/welcome`).then((response: any) => {
      return response.text()
    }).then((message) => {
      this.welcome = message;
    });
  }

  formattedName(): string {
    if (this.name) {
      return this.name.substr(0, 1).toUpperCase() + this.name.substr(1).toLowerCase();
    }
    return '';
  }

  render() {
    return [
      <ion-header>
        <ion-toolbar color="primary">
          <ion-buttons slot="start">
            <ion-back-button defaultHref="/" />
          </ion-buttons>
          <ion-title>Profile: {this.name}</ion-title>
        </ion-toolbar>
      </ion-header>,

      <ion-content padding>
        <p>
        {this.welcome}! This '{this.welcome}' was fetched from the api! My name is {this.formattedName()}. My name was passed in through a
          route param!
        </p>

        <ion-item>
          <ion-label>Setting ({this.state.toString()})</ion-label>
          <ion-toggle
            checked={this.state}
            onIonChange={ev => (this.state = ev.detail.checked)}
          />
        </ion-item>
      </ion-content>
    ];
  }
}
