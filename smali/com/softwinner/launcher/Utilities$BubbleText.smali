.class Lcom/softwinner/launcher/Utilities$BubbleText;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BubbleText"
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x2


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mBubbleRect:Landroid/graphics/RectF;

.field private final mDensity:I

.field private final mFirstLineY:I

.field private final mLeading:I

.field private final mLineHeight:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextWidth:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 304
    .local v8, resources:Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 305
    .local v5, metrics:Landroid/util/DisplayMetrics;
    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    .line 306
    .local v9, scale:F
    iget v11, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mDensity:I

    .line 308
    const/high16 v11, 0x4000

    mul-float v6, v11, v9

    .line 309
    .local v6, paddingLeft:F
    const/high16 v11, 0x4000

    mul-float v7, v11, v9

    .line 310
    .local v7, paddingRight:F
    const/high16 v11, 0x7f08

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 312
    .local v2, cellWidth:F
    iget-object v1, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    .line 313
    .local v1, bubbleRect:Landroid/graphics/RectF;
    const/4 v11, 0x0

    iput v11, v1, Landroid/graphics/RectF;->left:F

    .line 314
    const/4 v11, 0x0

    iput v11, v1, Landroid/graphics/RectF;->top:F

    .line 315
    float-to-int v11, v2

    int-to-float v11, v11

    iput v11, v1, Landroid/graphics/RectF;->right:F

    .line 317
    sub-float v11, v2, v6

    sub-float/2addr v11, v7

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mTextWidth:F

    .line 319
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    .line 320
    .local v10, textPaint:Landroid/text/TextPaint;
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 321
    const/high16 v11, 0x4150

    mul-float/2addr v11, v9

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 322
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 323
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 328
    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v11

    neg-float v0, v11

    .line 329
    .local v0, ascent:F
    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v3

    .line 330
    .local v3, descent:F
    const/4 v4, 0x0

    .line 331
    .local v4, leading:F
    const/high16 v11, 0x3f00

    add-float/2addr v11, v4

    float-to-int v11, v11

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLeading:I

    .line 332
    add-float v11, v4, v0

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mFirstLineY:I

    .line 333
    add-float v11, v4, v0

    add-float/2addr v11, v3

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLineHeight:I

    .line 335
    iget-object v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapWidth:I

    .line 336
    iget v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLineHeight:I

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v4

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Lcom/softwinner/launcher/Utilities;->roundToPow2(I)I

    move-result v11

    iput v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapHeight:I

    .line 338
    iget-object v11, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    iget v12, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapWidth:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 345
    return-void
.end method

.method private height(I)I
    .locals 2
    .parameter "lineCount"

    .prologue
    .line 378
    iget v0, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLineHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLeading:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLeading:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "text"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget v2, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 350
    .local v9, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mDensity:I

    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 351
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .local v10, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mTextWidth:F

    float-to-int v4, v2

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 355
    .local v1, layout:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    .line 356
    .local v12, lineCount:I
    const/4 v2, 0x2

    if-le v12, v2, :cond_0

    .line 357
    const/4 v12, 0x2

    .line 364
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 367
    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 368
    .local v13, lineText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v14, v2

    .line 370
    .local v14, x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mFirstLineY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mLineHeight:I

    mul-int/2addr v3, v11

    add-int v15, v2, v3

    .line 371
    .local v15, y:I
    int-to-float v2, v14

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/softwinner/launcher/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v13, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 374
    .end local v13           #lineText:Ljava/lang/String;
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_1
    return-object v9
.end method

.method getBitmapHeight()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapHeight:I

    return v0
.end method

.method getBitmapWidth()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBitmapWidth:I

    return v0
.end method

.method getBubbleWidth()I
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/softwinner/launcher/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getMaxBubbleHeight()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/softwinner/launcher/Utilities$BubbleText;->height(I)I

    move-result v0

    return v0
.end method
