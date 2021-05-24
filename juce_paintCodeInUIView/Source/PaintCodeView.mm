/*
  ==============================================================================

    PaintCodeView.cpp
    Created: 23 May 2021 5:28:27pm
    Author:  Julien Bloit

  ==============================================================================
*/

#include "PaintCodeView.h"
#include "../../reichStarPaintCode/ReichStarStyleKit.h"
#include "../../reichStarPaintCode/PCView.h"


PaintCodeView::PaintCodeView(){};

void PaintCodeView::resized ()
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
            PCView* view = [[PCView alloc] initWithFrame:rect];

            view.backgroundColor = [UIColor clearColor];
            
            m_view = view;
            
            setView (view);
        }
    }
}
