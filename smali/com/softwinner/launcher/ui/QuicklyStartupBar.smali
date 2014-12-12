.class public Lcom/softwinner/launcher/ui/QuicklyStartupBar;
.super Landroid/widget/RelativeLayout;
.source "QuicklyStartupBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ITEM_NUM:I

.field private final TAG:Ljava/lang/String;

.field private down_image_selected_list:[I

.field private down_image_unselected_list:[I

.field private g_width:I

.field private mClick:[Landroid/view/View$OnClickListener;

.field private mDown:Landroid/widget/LinearLayout;

.field private mDownImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/softwinner/launcher/Launcher;

.field private mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

.field private mMiddle:Landroid/widget/RelativeLayout;

.field private mSelectedPosition:I

.field private mText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/LinearLayout;

.field private mUp:Landroid/widget/LinearLayout;

.field private mUpImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private max_down_image_selected_list:[I

.field private max_down_image_unselected_list:[I

.field private max_mid_image_selected_list:[I

.field private max_up_image_selected_list:[I

.field private max_up_image_unselected_list:[I

.field private mid_image_selected_list:[I

.field private min_down_image_selected_list:[I

.field private min_down_image_unselected_list:[I

.field private min_mid_image_selected_list:[I

.field private min_up_image_selected_list:[I

.field private min_up_image_unselected_list:[I

.field private startupbar_text:[I

.field private text_selected_color:[I

.field private up_image_selected_list:[I

.field private up_image_unselected_list:[I

.field private vmax_down_image_selected_list:[I

.field private vmax_down_image_unselected_list:[I

.field private vmax_mid_image_selected_list:[I

.field private vmax_up_image_selected_list:[I

.field private vmax_up_image_unselected_list:[I

.field private vmin_down_image_selected_list:[I

.field private vmin_down_image_unselected_list:[I

.field private vmin_mid_image_selected_list:[I

.field private vmin_up_image_selected_list:[I

.field private vmin_up_image_unselected_list:[I

.field private xmax_down_image_selected_list:[I

.field private xmax_down_image_unselected_list:[I

.field private xmax_mid_image_selected_list:[I

.field private xmax_up_image_selected_list:[I

.field private xmax_up_image_unselected_list:[I

.field private xvmax_down_image_selected_list:[I

.field private xvmax_down_image_unselected_list:[I

.field private xvmax_mid_image_selected_list:[I

.field private xvmax_up_image_selected_list:[I

.field private xvmax_up_image_unselected_list:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 480
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v2, "Launcher.QuicklyStartupBar"

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->TAG:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->ITEM_NUM:I

    .line 38
    iput v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    .line 40
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I

    .line 48
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I

    .line 55
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mid_image_selected_list:[I

    .line 62
    new-array v2, v3, [I

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I

    .line 69
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I

    .line 76
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I

    .line 84
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I

    .line 91
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_mid_image_selected_list:[I

    .line 98
    new-array v2, v3, [I

    fill-array-data v2, :array_8

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I

    .line 105
    new-array v2, v3, [I

    fill-array-data v2, :array_9

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I

    .line 112
    new-array v2, v3, [I

    fill-array-data v2, :array_a

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I

    .line 120
    new-array v2, v3, [I

    fill-array-data v2, :array_b

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I

    .line 127
    new-array v2, v3, [I

    fill-array-data v2, :array_c

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_mid_image_selected_list:[I

    .line 134
    new-array v2, v3, [I

    fill-array-data v2, :array_d

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I

    .line 141
    new-array v2, v3, [I

    fill-array-data v2, :array_e

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I

    .line 148
    new-array v2, v3, [I

    fill-array-data v2, :array_f

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I

    .line 156
    new-array v2, v3, [I

    fill-array-data v2, :array_10

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I

    .line 163
    new-array v2, v3, [I

    fill-array-data v2, :array_11

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_mid_image_selected_list:[I

    .line 170
    new-array v2, v3, [I

    fill-array-data v2, :array_12

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I

    .line 177
    new-array v2, v3, [I

    fill-array-data v2, :array_13

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I

    .line 184
    new-array v2, v3, [I

    fill-array-data v2, :array_14

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I

    .line 192
    new-array v2, v3, [I

    fill-array-data v2, :array_15

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I

    .line 199
    new-array v2, v3, [I

    fill-array-data v2, :array_16

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_mid_image_selected_list:[I

    .line 206
    new-array v2, v3, [I

    fill-array-data v2, :array_17

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I

    .line 213
    new-array v2, v3, [I

    fill-array-data v2, :array_18

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I

    .line 220
    new-array v2, v3, [I

    fill-array-data v2, :array_19

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I

    .line 228
    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I

    .line 235
    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_mid_image_selected_list:[I

    .line 242
    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I

    .line 249
    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I

    .line 256
    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I

    .line 264
    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I

    .line 271
    new-array v2, v3, [I

    fill-array-data v2, :array_20

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_mid_image_selected_list:[I

    .line 278
    new-array v2, v3, [I

    fill-array-data v2, :array_21

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I

    .line 285
    new-array v2, v3, [I

    fill-array-data v2, :array_22

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I

    .line 292
    new-array v2, v3, [I

    fill-array-data v2, :array_23

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I

    .line 299
    new-array v2, v3, [I

    fill-array-data v2, :array_24

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    .line 306
    const v2, 0x3ffffffe

    iput v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    .line 321
    new-array v2, v3, [Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/softwinner/launcher/ui/QuicklyStartupBar$1;

    invoke-direct {v3, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar$1;-><init>(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-instance v4, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;

    invoke-direct {v4, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;-><init>(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/softwinner/launcher/ui/QuicklyStartupBar$3;

    invoke-direct {v4, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar$3;-><init>(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/softwinner/launcher/ui/QuicklyStartupBar$4;

    invoke-direct {v4, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar$4;-><init>(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/softwinner/launcher/ui/QuicklyStartupBar$5;

    invoke-direct {v4, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar$5;-><init>(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mClick:[Landroid/view/View$OnClickListener;

    .line 481
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mInflater:Landroid/view/LayoutInflater;

    .line 483
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 484
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 485
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iput v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    .line 486
    const-string v2, "cjcheng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****** g_width :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "****************\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x62t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
    .end array-data

    .line 55
    :array_2
    .array-data 0x4
        0x27t 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 62
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 69
    :array_4
    .array-data 0x4
        0x42t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
    .end array-data

    .line 76
    :array_5
    .array-data 0x4
        0x7ct 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
    .end array-data

    .line 84
    :array_6
    .array-data 0x4
        0x63t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_7
    .array-data 0x4
        0x28t 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_8
    .array-data 0x4
        0x6t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_9
    .array-data 0x4
        0x43t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_a
    .array-data 0x4
        0x7et 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_b
    .array-data 0x4
        0x65t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
    .end array-data

    .line 127
    :array_c
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
    .end array-data

    .line 134
    :array_d
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 141
    :array_e
    .array-data 0x4
        0x45t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
    .end array-data

    .line 148
    :array_f
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
    .end array-data

    .line 156
    :array_10
    .array-data 0x4
        0x64t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
    .end array-data

    .line 163
    :array_11
    .array-data 0x4
        0x29t 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 170
    :array_12
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 177
    :array_13
    .array-data 0x4
        0x44t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
    .end array-data

    .line 184
    :array_14
    .array-data 0x4
        0x7ft 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
    .end array-data

    .line 192
    :array_15
    .array-data 0x4
        0x66t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
    .end array-data

    .line 199
    :array_16
    .array-data 0x4
        0x2bt 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 206
    :array_17
    .array-data 0x4
        0x9t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 213
    :array_18
    .array-data 0x4
        0x46t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
    .end array-data

    .line 220
    :array_19
    .array-data 0x4
        0xcbt 0x0t 0x2t 0x7ft
        0xcdt 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 228
    :array_1a
    .array-data 0x4
        0xc1t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xc9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 235
    :array_1b
    .array-data 0x4
        0xadt 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 242
    :array_1c
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
    .end array-data

    .line 249
    :array_1d
    .array-data 0x4
        0xb7t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
    .end array-data

    .line 256
    :array_1e
    .array-data 0x4
        0xcct 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
    .end array-data

    .line 264
    :array_1f
    .array-data 0x4
        0xc2t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
        0xcat 0x0t 0x2t 0x7ft
    .end array-data

    .line 271
    :array_20
    .array-data 0x4
        0xaet 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 278
    :array_21
    .array-data 0x4
        0xa4t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
    .end array-data

    .line 285
    :array_22
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 292
    :array_23
    .array-data 0x4
        0xct 0x0t 0xat 0x7ft
        0xdt 0x0t 0xat 0x7ft
        0xft 0x0t 0xat 0x7ft
        0xet 0x0t 0xat 0x7ft
        0x10t 0x0t 0xat 0x7ft
    .end array-data

    .line 299
    :array_24
    .array-data 0x4
        0x59t 0xe2t 0xc0t 0xfft
        0x47t 0x80t 0xb0t 0xfft
        0xd7t 0x86t 0xeft 0xfft
        0xd0t 0xe4t 0x6at 0xfft
        0x0t 0x96t 0xf1t 0xfft
    .end array-data
.end method

.method static synthetic access$002(Lcom/softwinner/launcher/ui/QuicklyStartupBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    return v0
.end method

.method static synthetic access$1000(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$3100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$3200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setViewForMiddle()V

    return-void
.end method

.method static synthetic access$3400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setTitle(Ljava/util/ArrayList;[I)V

    return-void
.end method

.method static synthetic access$400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    return-void
.end method

.method static synthetic access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I

    return-object v0
.end method

.method private addTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/high16 v3, 0x3f80

    .line 650
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    .line 652
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 653
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 654
    .local v1, v:Landroid/widget/TextView;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    const/high16 v2, -0x100

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 656
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mClick:[Landroid/view/View$OnClickListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    .end local v1           #v:Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I

    invoke-direct {p0, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setTitle(Ljava/util/ArrayList;[I)V

    .line 660
    return-void
.end method

.method private addViewForDown(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x5a0

    const/16 v6, 0x500

    const/16 v5, 0x400

    const/16 v4, 0x384

    const/4 v3, 0x5

    .line 626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    .line 628
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 629
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDown:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 630
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mClick:[Landroid/view/View$OnClickListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v1           #v:Landroid/widget/ImageView;
    :cond_0
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x780

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x690

    if-lt v2, v3, :cond_1

    .line 634
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 648
    :goto_1
    return-void

    .line 635
    :cond_1
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x690

    if-ge v2, v3, :cond_2

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v7, :cond_2

    .line 636
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 637
    :cond_2
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v7, :cond_3

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v6, :cond_3

    .line 638
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 639
    :cond_3
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v6, :cond_4

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v5, :cond_4

    .line 640
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 641
    :cond_4
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v5, :cond_5

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v4, :cond_5

    .line 642
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 643
    :cond_5
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v4, :cond_6

    .line 644
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 646
    :cond_6
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1
.end method

.method private addViewForUp(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x5a0

    const/16 v6, 0x500

    const/16 v5, 0x400

    const/16 v4, 0x384

    const/4 v3, 0x5

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    .line 509
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 510
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUp:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 511
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mClick:[Landroid/view/View$OnClickListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v1           #v:Landroid/widget/ImageView;
    :cond_0
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x780

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x690

    if-lt v2, v3, :cond_1

    .line 515
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 529
    :goto_1
    return-void

    .line 516
    :cond_1
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x690

    if-ge v2, v3, :cond_2

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v7, :cond_2

    .line 517
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 518
    :cond_2
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v7, :cond_3

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v6, :cond_3

    .line 519
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 520
    :cond_3
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v6, :cond_4

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v5, :cond_4

    .line 521
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 522
    :cond_4
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v5, :cond_5

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v4, :cond_5

    .line 523
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 524
    :cond_5
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v4, :cond_6

    .line 525
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1

    .line 527
    :cond_6
    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I

    iget-object v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_1
.end method

.method private setImage(Ljava/util/ArrayList;[I[I)V
    .locals 3
    .parameter
    .parameter "sel"
    .parameter "unsel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;[I[I)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 663
    iget v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    .line 664
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    array-length v2, p3

    rem-int v2, v0, v2

    aget v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 669
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/util/ArrayList;[I)V
    .locals 11
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p1, text:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const/16 v10, 0x690

    const/16 v9, 0x5a0

    const/16 v8, 0x500

    const/16 v7, 0x400

    const/16 v6, 0x384

    .line 573
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_f

    .line 574
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v6, :cond_1

    .line 576
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 579
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 580
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x780

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v10, :cond_2

    .line 581
    const/16 v2, 0x120

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 595
    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v2, v2, 0x5

    if-ne v0, v2, :cond_0

    .line 598
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    iget v4, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v5, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v6, :cond_8

    .line 601
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, 0x41c0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 604
    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 605
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v3, 0x780

    if-gt v2, v3, :cond_9

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v10, :cond_9

    .line 606
    const/16 v2, 0x180

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 620
    :goto_4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 578
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1

    .line 582
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v10, :cond_3

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v9, :cond_3

    .line 583
    const/16 v2, 0xd8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 584
    :cond_3
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v9, :cond_4

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v8, :cond_4

    .line 585
    const/16 v2, 0xc0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 586
    :cond_4
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v8, :cond_5

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v7, :cond_5

    .line 587
    const/16 v2, 0xa2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 588
    :cond_5
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v7, :cond_6

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v6, :cond_6

    .line 589
    const/16 v2, 0x87

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 590
    :cond_6
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v6, :cond_7

    .line 591
    const/16 v2, 0x6c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 593
    :cond_7
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    .line 603
    :cond_8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    .line 607
    :cond_9
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v10, :cond_a

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v9, :cond_a

    .line 608
    const/16 v2, 0x120

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_4

    .line 609
    :cond_a
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v9, :cond_b

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v8, :cond_b

    .line 610
    const/16 v2, 0x100

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_4

    .line 611
    :cond_b
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v8, :cond_c

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v7, :cond_c

    .line 612
    const/16 v2, 0xd8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_4

    .line 613
    :cond_c
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v7, :cond_d

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v2, v6, :cond_d

    .line 614
    const/16 v2, 0xb4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_4

    .line 615
    :cond_d
    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v2, v6, :cond_e

    .line 616
    const/16 v2, 0x90

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_4

    .line 618
    :cond_e
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_4

    .line 623
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    return-void
.end method

.method private setViewForMiddle()V
    .locals 14

    .prologue
    const/16 v13, 0x690

    const/16 v12, 0x5a0

    const/16 v11, 0x500

    const/16 v10, 0x400

    const/16 v9, 0x384

    .line 532
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMiddle:Landroid/widget/RelativeLayout;

    const v7, 0x7f0c0021

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 533
    .local v4, v:Landroid/widget/ImageView;
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v7, 0x780

    if-gt v6, v7, :cond_0

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v13, :cond_0

    .line 534
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    .line 549
    .local v3, t:I
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 550
    .local v0, height:I
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v1, v6, 0xf0

    .line 551
    .local v1, l:I
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 552
    .local v5, width:I
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 553
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v7, 0x780

    if-gt v6, v7, :cond_6

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v13, :cond_6

    .line 554
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0x180

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 568
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-void

    .line 535
    .end local v0           #height:I
    .end local v1           #l:I
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #t:I
    .end local v5           #width:I
    :cond_0
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v13, :cond_1

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v12, :cond_1

    .line 536
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 537
    :cond_1
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v12, :cond_2

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v11, :cond_2

    .line 538
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 539
    :cond_2
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v11, :cond_3

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v10, :cond_3

    .line 540
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 541
    :cond_3
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v10, :cond_4

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v9, :cond_4

    .line 542
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 543
    :cond_4
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v9, :cond_5

    .line 544
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 546
    :cond_5
    iget-object v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mid_image_selected_list:[I

    iget v7, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v8, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mid_image_selected_list:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 555
    .restart local v0       #height:I
    .restart local v1       #l:I
    .restart local v2       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #t:I
    .restart local v5       #width:I
    :cond_6
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v13, :cond_7

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v12, :cond_7

    .line 556
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0x120

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 557
    :cond_7
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v12, :cond_8

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v11, :cond_8

    .line 558
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0x100

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 559
    :cond_8
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v11, :cond_9

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v10, :cond_9

    .line 560
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0xd8

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 561
    :cond_9
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v10, :cond_a

    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v6, v9, :cond_a

    .line 562
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0xb4

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 563
    :cond_a
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v6, v9, :cond_b

    .line 564
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0x90

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 566
    :cond_b
    iget v6, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v6, v6, 0x5

    mul-int/lit16 v6, v6, 0x140

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1
.end method


# virtual methods
.method public moveToLeft()V
    .locals 7

    .prologue
    const/16 v6, 0x690

    const/16 v5, 0x5a0

    const/16 v4, 0x500

    const/16 v3, 0x400

    const/16 v2, 0x384

    .line 714
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    .line 715
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v1, 0x780

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v6, :cond_0

    .line 716
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 717
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 737
    :goto_0
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setViewForMiddle()V

    .line 738
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I

    invoke-direct {p0, v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setTitle(Ljava/util/ArrayList;[I)V

    .line 739
    return-void

    .line 718
    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v6, :cond_1

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v5, :cond_1

    .line 719
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 720
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 721
    :cond_1
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v5, :cond_2

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v4, :cond_2

    .line 722
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 723
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 724
    :cond_2
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v3, :cond_3

    .line 725
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 726
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 727
    :cond_3
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v3, :cond_4

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v2, :cond_4

    .line 728
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 729
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 730
    :cond_4
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v2, :cond_5

    .line 731
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 732
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 734
    :cond_5
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 735
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0
.end method

.method public moveToRight()V
    .locals 7

    .prologue
    const/16 v6, 0x690

    const/16 v5, 0x5a0

    const/16 v4, 0x500

    const/16 v3, 0x400

    const/16 v2, 0x384

    .line 745
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    .line 746
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v1, 0x780

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v6, :cond_0

    .line 747
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 748
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 768
    :goto_0
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setViewForMiddle()V

    .line 769
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I

    invoke-direct {p0, v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setTitle(Ljava/util/ArrayList;[I)V

    .line 770
    return-void

    .line 749
    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v6, :cond_1

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v5, :cond_1

    .line 750
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 751
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 752
    :cond_1
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v5, :cond_2

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v4, :cond_2

    .line 753
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 754
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 755
    :cond_2
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v3, :cond_3

    .line 756
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 757
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 758
    :cond_3
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v3, :cond_4

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v2, :cond_4

    .line 759
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 760
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 761
    :cond_4
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v2, :cond_5

    .line 762
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 763
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 765
    :cond_5
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 766
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 836
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 493
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUp:Landroid/widget/LinearLayout;

    .line 494
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMiddle:Landroid/widget/RelativeLayout;

    .line 495
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDown:Landroid/widget/LinearLayout;

    .line 496
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mTitle:Landroid/widget/LinearLayout;

    .line 498
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->addViewForUp(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->addViewForDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 500
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setViewForMiddle()V

    .line 501
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->addTitle()V

    .line 502
    invoke-virtual {p0, p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->invalidate()V

    .line 504
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 782
    if-eqz p1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    iget v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->text_selected_color:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 795
    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->moveToLeft()V

    .line 826
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 797
    :cond_1
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->moveToRight()V

    goto :goto_0

    .line 799
    :cond_2
    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    .line 801
    iget v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    rem-int/lit8 v1, v1, 0x5

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 803
    :pswitch_0
    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/ui/WorkSpace;->showAllApps(Z)V

    goto :goto_0

    .line 806
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 807
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.softwinner.TvdFileManager"

    const-string v2, "com.softwinner.TvdFileManager.MainUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v1, "media_type"

    const-string v2, "MEDIA_TYPE_ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    const-string v2, "Launcher.QuicklyStartupBar"

    invoke-virtual {v1, v0, v2}, Lcom/softwinner/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 812
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 813
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    const-string v2, "Launcher.QuicklyStartupBar"

    invoke-virtual {v1, v0, v2}, Lcom/softwinner/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 817
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

    invoke-virtual {v1, v2}, Lcom/softwinner/launcher/ui/WorkSpace;->showFavoritesApps(Z)V

    goto :goto_0

    .line 820
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 821
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

    iget-object v1, v1, Lcom/softwinner/launcher/ui/WorkSpace;->mLauncher:Lcom/softwinner/launcher/Launcher;

    const-string v2, "Launcher.QuicklyStartupBar"

    invoke-virtual {v1, v0, v2}, Lcom/softwinner/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reflashLocal()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I

    invoke-direct {p0, v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setTitle(Ljava/util/ArrayList;[I)V

    .line 831
    return-void
.end method

.method public setMainLayout(Lcom/softwinner/launcher/ui/WorkSpace;)V
    .locals 0
    .parameter "mainLayout"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mMainLayout:Lcom/softwinner/launcher/ui/WorkSpace;

    .line 778
    return-void
.end method

.method public setPosition(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/16 v6, 0x690

    const/16 v5, 0x5a0

    const/16 v4, 0x500

    const/16 v3, 0x400

    const/16 v2, 0x384

    .line 684
    iput p1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I

    .line 685
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    const/16 v1, 0x780

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v6, :cond_0

    .line 686
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 687
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 707
    :goto_0
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setViewForMiddle()V

    .line 708
    return-void

    .line 688
    :cond_0
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v6, :cond_1

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v5, :cond_1

    .line 689
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 690
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 691
    :cond_1
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v5, :cond_2

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v4, :cond_2

    .line 692
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 693
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 694
    :cond_2
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v3, :cond_3

    .line 695
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 696
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 697
    :cond_3
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v3, :cond_4

    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-lt v0, v2, :cond_4

    .line 698
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 699
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 700
    :cond_4
    iget v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I

    if-ge v0, v2, :cond_5

    .line 701
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 702
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 704
    :cond_5
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    .line 705
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0
.end method
