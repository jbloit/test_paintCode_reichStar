#pragma once

#include <JuceHeader.h>

#if JUCE_IOS
#define PaintCodeViewBase juce::UIViewComponent
#endif

#if JUCE_MAC
#define PaintCodeViewBase juce::NSViewComponent
#endif

class PaintCodeView : public PaintCodeViewBase
{
public:
    
    PaintCodeView ();
    
    void resized () override;
    
    void setAngle(float newAngle);
    
private:
    
    void* m_view = nullptr;
};
