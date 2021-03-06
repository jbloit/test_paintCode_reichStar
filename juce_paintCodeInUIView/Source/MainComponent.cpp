#include "MainComponent.h"

//==============================================================================
MainComponent::MainComponent()
{
    addAndMakeVisible(paintCodeView);
    addAndMakeVisible(slider);
    slider.setRange(0, 360);
    slider.onValueChange = [this](){
        paintCodeView.setAngle(slider.getValue());
    };

    startTimer(300);
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
    
    paintCodeView.setBounds(area.reduced(0, proportionOfHeight(0.1)));
    
    slider.setBounds(area.removeFromBottom(proportionOfHeight(0.1)));
}

void MainComponent::timerCallback()
{
    currentPhasingIndex += 1;
    currentPhasingIndex = currentPhasingIndex % 12;

    currentFixedIndex += 1;
    currentFixedIndex = currentFixedIndex % 12;

    paintCodeView.setFixedHilitedBranch(currentFixedIndex);
    paintCodeView.setPhasingHilitedBranch(currentPhasingIndex);
}
