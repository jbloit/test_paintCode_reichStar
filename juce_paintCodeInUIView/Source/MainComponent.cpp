#include "MainComponent.h"

//==============================================================================
MainComponent::MainComponent()
{
    addAndMakeVisible(paintCodeView);
    setSize (600, 400);
}

MainComponent::~MainComponent()
{
}

//==============================================================================
void MainComponent::paint (juce::Graphics& g)
{
    // (Our component is opaque, so we must completely fill the background with a solid colour)
    g.fillAll (juce::Colours::black);

}

void MainComponent::resized()
{
    auto area = getLocalBounds();
    paintCodeView.setBounds(area.reduced(proportionOfWidth(0.2)));
    
}
