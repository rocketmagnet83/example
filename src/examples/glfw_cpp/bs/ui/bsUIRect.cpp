
#include "uiRect.hpp"


uiRect::uiRect(int x1, int y1, int x2, int y2)
{
    /** make sure the rectangle is aligned right x1,y1 is left top of the rectangle */
    if(x1>y2) y2=x2;
    if(y1>y2) y2=y1;

    m_x1 = x1;
    m_y2 = y2;
    m_x2 = x2;
    m_y2 = y2;

}

/**
 * Set the position of the rectangle.
 * \param posx The new upper left x position of the rectangle.
 * \param posy The new upper left y position of the rectangle.
 */
void uiRect::setPos(int posx, int posy)
{
    
}

/**
 * Get the position of the rectangle.
 * \param posx The upper left x position.
 * \param posy The upper left y position.
 */
void uiRect::getPos(int &posx, int &posy) const
{
}

/**
 * Set the size of the rectangle.
 * \param posx The width of the rectangle.
 * \param posy The height of the rectangle.
 */
void uiRect::setWidth(int width)
{
 
}

void uiRect::getWidth(int &width) const
{
    width = m_x2-m_y1;
}

/**
 * Set the size of the rectangle.
 * \param posx The width of the rectangle.
 * \param posy The height of the rectangle.
 */
void uiRect::setHeight(int height) const
{
    height = m_x2-m_x1;
}



void uiRect::getHeight(int &height) const
{
    height = m_y2-m_y1;
}

