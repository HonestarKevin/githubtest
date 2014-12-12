.class public final Lcom/softwinner/launcher/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CellLayout:[I = null

.field public static final CellLayout_cellHeight:I = 0x1

.field public static final CellLayout_cellWidth:I = 0x0

.field public static final CellLayout_longAxisCells:I = 0x7

.field public static final CellLayout_longAxisEndPadding:I = 0x3

.field public static final CellLayout_longAxisStartPadding:I = 0x2

.field public static final CellLayout_shortAxisCells:I = 0x6

.field public static final CellLayout_shortAxisEndPadding:I = 0x5

.field public static final CellLayout_shortAxisStartPadding:I = 0x4

.field public static final Favorite:[I = null

.field public static final Favorite_className:I = 0x0

.field public static final Favorite_icon:I = 0x7

.field public static final Favorite_packageName:I = 0x1

.field public static final Favorite_screen:I = 0x2

.field public static final Favorite_spanX:I = 0x5

.field public static final Favorite_spanY:I = 0x6

.field public static final Favorite_title:I = 0x8

.field public static final Favorite_uri:I = 0x9

.field public static final Favorite_x:I = 0x3

.field public static final Favorite_y:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 581
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/softwinner/launcher/R$styleable;->CellLayout:[I

    .line 753
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/softwinner/launcher/R$styleable;->Favorite:[I

    return-void

    .line 581
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data

    .line 753
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
