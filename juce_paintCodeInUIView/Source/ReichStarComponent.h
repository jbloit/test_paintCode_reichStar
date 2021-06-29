#pragma once

#include <JuceHeader.h>

#if JUCE_IOS
#define PaintCodeViewBase juce::UIViewComponent
#endif

#if JUCE_MAC
#define PaintCodeViewBase juce::NSViewComponent
#endif

class ReichStarComponent : public PaintCodeViewBase
{
public:
    
    ReichStarComponent ();
    
    void resized () override;
    
    void setAngle(float newAngle);
    
private:
    
    void* m_view = nullptr;
};
