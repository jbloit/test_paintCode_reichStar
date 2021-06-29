/*
  ==============================================================================

    ReichStarComponent.cpp
    Created: 23 May 2021 5:28:27pm
    Author:  Julien Bloit

  ==============================================================================
*/

#include "ReichStarComponent.h"

#ifdef JUCE_IOS
#include "stylekit_ios/ReichStarStyleKit.h"
#include "stylekit_ios/ReichStarView.h"
#endif

#ifdef JUCE_MAC
#include "stylekit_macos/ReichStarStyleKit.h"
#include "stylekit_macos/ReichStarView.h"
#endif

ReichStarComponent::ReichStarComponent(){};


void ReichStarComponent::setAngle(float newAngle)
{
    if (m_view != nullptr)
    {
    
        [(ReichStarView*)m_view setAngle:newAngle];
    }
}

void ReichStarComponent::resized ()
{
    if (!m_view)
    {
        const auto b = getLocalBounds ();
        if (!b.isEmpty())
        {
            CGRect rect;
            rect.origin.x = b.getX();
            rect.origin.y = b.getY();
            rect.size.height = b.getHeight();
            rect.size.width = b.getWidth();
            ReichStarView* view = [[ReichStarView alloc] initWithFrame:rect];

            #ifdef JUCE_IOS
            view.backgroundColor = [UIColor clearColor];
            #endif

            #ifdef JUCE_MAC
            [view setWantsLayer:YES];
            [view.layer setBackgroundColor:[[NSColor clearColor] CGColor]];
            #endif

            m_view = view;
            
            setView (m_view);
        }
    }
}
