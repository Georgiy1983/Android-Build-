from kivy.app import App
from kivy.uix.button import Button
from kivy.uix.boxlayout import BoxLayout

class MyApp(App):
    def build(self):
        layout = BoxLayout(orientation='vertical', padding=50)
        btn = Button(text='Hello from GitHub Actions!', 
                    size_hint=(0.8, 0.2),
                    background_color=(0.2, 0.6, 1, 1))
        btn.bind(on_press=self.on_button_press)
        layout.add_widget(btn)
        return layout
    
    def on_button_press(self, instance):
        instance.text = 'Button Clicked!'

if __name__ == '__main__':
    MyApp().run()