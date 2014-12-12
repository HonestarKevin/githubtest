.class public Lcom/softwinner/launcher/ui/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# static fields
.field static final CORNER_RADIUS:F = 8.0f

.field static final PADDING_H:F = 5.0f

.field static final PADDING_V:F = 1.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mCornerRadius:F

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 51
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 56
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 61
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->init()V

    .line 62
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/ui/BubbleTextView;->setFocusable(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/softwinner/launcher/ui/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .local v0, scale:F
    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mCornerRadius:F

    .line 74
    const/high16 v1, 0x40a0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaddingH:F

    .line 76
    const/high16 v1, 0x3f80

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaddingV:F

    .line 77
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 103
    iget-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 104
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 105
    iget v4, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mScrollX:I

    .line 106
    .local v4, scrollX:I
    iget v5, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mScrollY:I

    .line 108
    .local v5, scrollY:I
    iget-boolean v7, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_0

    .line 109
    iget v7, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRight:I

    iget v8, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBottom:I

    iget v9, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iput-boolean v12, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 113
    :cond_0
    or-int v7, v4, v5

    if-nez v7, :cond_2

    .line 114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 123
    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 124
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 125
    .local v2, left:I
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getExtendedPaddingTop()I

    move-result v6

    .line 127
    .local v6, top:I
    int-to-float v7, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaddingH:F

    sub-float/2addr v7, v8

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaddingV:F

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaddingH:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mScrollX:I

    iget v11, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget v11, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaddingV:F

    add-float/2addr v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    iget v7, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 134
    return-void

    .line 116
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #left:I
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v6           #top:I
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_2
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 95
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 99
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 139
    iget-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 81
    iget v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 84
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/softwinner/launcher/ui/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
