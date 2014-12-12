.class public final Lcom/softwinner/launcher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/Utilities$BubbleText;
    }
.end annotation


# static fields
.field public static final ACTION_COUNT:I = 0x5

.field public static final ACTION_START_ALL_APP_VIEW:I = 0x0

.field public static final ACTION_START_FAVORITES_APPS:I = 0x2

.field public static final ACTION_START_FILEMANAGER:I = 0x3

.field public static final ACTION_START_SETTINGS:I = 0x1

.field public static final ACTION_START_WEBBROWSER:I = 0x4

.field public static final ACTION_TVD_WIDGETS_PICKER:Ljava/lang/String; = "com.softwinner.launcher.WIDGETS_PICKER"

.field public static final ACTION_WEATHER_UPDATE:Ljava/lang/String; = "com.softwinner.launcher.weather"

.field public static final DEBUG:Z = false

.field public static final FILEMANAGER_NAME:Ljava/lang/String; = "com.softwinner.TvdFileManager.MainUI"

.field public static final FILEMANAGER_PACKAGE:Ljava/lang/String; = "com.softwinner.TvdFileManager"

.field public static final FILEMANAGER_TYPE_ALL:Ljava/lang/String; = "MEDIA_TYPE_ALL"

.field public static final FILEMANAGER_TYPE_MUSIC:Ljava/lang/String; = "MEDIA_TYPE_MUSIC"

.field public static final FILEMANAGER_TYPE_PICTURE:Ljava/lang/String; = "MEDIA_TYPE_PICTURE"

.field public static final FILEMANAGER_TYPE_VIDEO:Ljava/lang/String; = "MEDIA_TYPE_VIDEO"

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final TEXT_BURN:Z = false

.field public static final WEATHER_INFO_LOCATION:Ljava/lang/String; = "weather_info_location"

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 82
    sput v0, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    .line 83
    sput v0, Lcom/softwinner/launcher/Utilities;->sIconHeight:I

    .line 84
    sput v0, Lcom/softwinner/launcher/Utilities;->sIconTextureWidth:I

    .line 85
    sput v0, Lcom/softwinner/launcher/Utilities;->sIconTextureHeight:I

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 97
    sget-object v0, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/softwinner/launcher/Utilities;->sColors:[I

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/softwinner/launcher/Utilities;->sColorIndex:I

    return-void

    .line 122
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method static centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "context"

    .prologue
    const/high16 v8, 0x4000

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 103
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 105
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_0

    if-ge v0, p2, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 108
    .local v4, color:I
    if-ge v1, p1, :cond_2

    move v6, p1

    :goto_0
    if-ge v0, p2, :cond_3

    move v5, p2

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    .local v3, centered:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 111
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 113
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    move-object p0, v3

    .line 119
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_1
    return-object p0

    .restart local v4       #color:I
    :cond_2
    move v6, v1

    .line 108
    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 130
    sget-object v16, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v16

    .line 131
    :try_start_0
    sget v15, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/softwinner/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 135
    :cond_0
    sget v14, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    .line 136
    .local v14, width:I
    sget v5, Lcom/softwinner/launcher/Utilities;->sIconHeight:I

    .line 138
    .local v5, height:I
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v15, :cond_4

    .line 139
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v7, v0

    .line 140
    .local v7, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v7, v14}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 141
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 150
    .end local v7           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 151
    .local v10, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 153
    .local v9, sourceHeight:I
    if-lez v10, :cond_3

    if-lez v10, :cond_3

    .line 155
    if-lt v14, v10, :cond_2

    if-ge v5, v9, :cond_6

    .line 157
    :cond_2
    int-to-float v15, v10

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v8, v15, v17

    .line 158
    .local v8, ratio:F
    if-le v10, v9, :cond_5

    .line 159
    int-to-float v15, v14

    div-float/2addr v15, v8

    float-to-int v5, v15

    .line 171
    .end local v8           #ratio:F
    :cond_3
    :goto_1
    sget v12, Lcom/softwinner/launcher/Utilities;->sIconTextureWidth:I

    .line 172
    .local v12, textureWidth:I
    sget v11, Lcom/softwinner/launcher/Utilities;->sIconTextureHeight:I

    .line 174
    .local v11, textureHeight:I
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 177
    .local v4, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    sub-int v15, v12, v14

    div-int/lit8 v6, v15, 0x2

    .line 180
    .local v6, left:I
    sub-int v15, v11, v5

    div-int/lit8 v13, v15, 0x2

    .line 191
    .local v13, top:I
    sget-object v15, Lcom/softwinner/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    add-int v15, v6, v14

    add-int v17, v13, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v13, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    sget-object v15, Lcom/softwinner/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 196
    monitor-exit v16

    return-object v2

    .line 142
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v6           #left:I
    .end local v9           #sourceHeight:I
    .end local v10           #sourceWidth:I
    .end local v11           #textureHeight:I
    .end local v12           #textureWidth:I
    .end local v13           #top:I
    :cond_4
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_1

    .line 144
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 145
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    if-nez v15, :cond_1

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 197
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #height:I
    .end local v14           #width:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 160
    .restart local v5       #height:I
    .restart local v8       #ratio:F
    .restart local v9       #sourceHeight:I
    .restart local v10       #sourceWidth:I
    .restart local v14       #width:I
    :cond_5
    if-le v9, v10, :cond_3

    .line 161
    int-to-float v15, v5

    mul-float/2addr v15, v8

    float-to-int v14, v15

    goto :goto_1

    .line 163
    .end local v8           #ratio:F
    :cond_6
    if-ge v10, v14, :cond_3

    if-ge v9, v5, :cond_3

    goto :goto_1
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 250
    sget-object v3, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v3

    .line 251
    :try_start_0
    sget v2, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 252
    invoke-static {p1}, Lcom/softwinner/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, disabled:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 257
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/softwinner/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    monitor-exit v3

    return-object v1

    .line 262
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #disabled:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "dest"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "pressed"
    .parameter "src"

    .prologue
    .line 202
    sget-object v5, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 203
    :try_start_0
    sget v4, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 207
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 210
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 213
    .local v3, xy:[I
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    .local v0, mask:Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 216
    .local v1, px:F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 217
    .local v2, py:F
    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/softwinner/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    monitor-exit v5

    .line 222
    return-void

    .line 217
    :cond_1
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 267
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 268
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 270
    .local v1, density:F
    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/softwinner/launcher/Utilities;->sIconHeight:I

    sput v4, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    .line 271
    sget v4, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/softwinner/launcher/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/softwinner/launcher/Utilities;->sIconTextureWidth:I

    .line 273
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 274
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 276
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 279
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 280
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 281
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 282
    sget-object v4, Lcom/softwinner/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 236
    sget-object v1, Lcom/softwinner/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 237
    :try_start_0
    sget v0, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 238
    invoke-static {p1}, Lcom/softwinner/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/softwinner/launcher/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/softwinner/launcher/Utilities;->sIconHeight:I

    if-ne v0, v2, :cond_1

    .line 242
    monitor-exit v1

    .line 244
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/softwinner/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0
    monitor-exit v1

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 400
    move v1, p0

    .line 401
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 402
    const/high16 v0, 0x800

    .line 403
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 404
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 407
    or-int/2addr p0, v0

    .line 408
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 411
    if-eq p0, v1, :cond_2

    .line 412
    shl-int/lit8 p0, p0, 0x1

    .line 414
    :cond_2
    return p0
.end method
