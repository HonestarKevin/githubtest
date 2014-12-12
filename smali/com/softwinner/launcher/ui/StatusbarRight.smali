.class public Lcom/softwinner/launcher/ui/StatusbarRight;
.super Landroid/widget/LinearLayout;
.source "StatusbarRight.java"


# instance fields
.field private final LEFT_BACKGROUND_ID:I

.field private final MIDDLE_BACKGROUND_ID:I

.field private final MID_VIEW_TAG:Ljava/lang/String;

.field private final RIGHT_BACKGROUND_ID:I

.field private final SETTINGS_ID:[I

.field private final WIFI_SIGNAL_ID:[I

.field private final WIFI_TAG:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private mLeftView:Landroid/widget/ImageView;

.field private mSettings:Landroid/widget/ImageView;

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSignal:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const v2, 0x7f02005e

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    .line 23
    iput v2, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->LEFT_BACKGROUND_ID:I

    .line 24
    const v1, 0x7f020060

    iput v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->MIDDLE_BACKGROUND_ID:I

    .line 25
    const v1, 0x7f020061

    iput v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->RIGHT_BACKGROUND_ID:I

    .line 27
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    .line 35
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->SETTINGS_ID:[I

    .line 40
    const-string v1, "wifi_icon"

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_TAG:Ljava/lang/String;

    .line 41
    const-string v1, "_mid"

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->MID_VIEW_TAG:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLeftView:Landroid/widget/ImageView;

    .line 55
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030007

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, clock:Landroid/view/View;
    invoke-virtual {p0, v0, v4}, Lcom/softwinner/launcher/ui/StatusbarRight;->addViewForStatusbar(Landroid/view/View;Ljava/lang/Object;)V

    .line 58
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mSettings:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mSettings:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->SETTINGS_ID:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mWifiSignal:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mWifiSignal:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mWifiSignal:Landroid/widget/ImageView;

    const-string v2, "wifi_icon"

    invoke-virtual {p0, v1, v2}, Lcom/softwinner/launcher/ui/StatusbarRight;->addViewForStatusbar(Landroid/view/View;Ljava/lang/Object;)V

    .line 64
    const-string v1, "wifi_icon"

    invoke-virtual {p0, v1, v3}, Lcom/softwinner/launcher/ui/StatusbarRight;->setTagViewVisible(Ljava/lang/Object;Z)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/StatusbarRight;->setOrientation(I)V

    .line 66
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private addViewForLayout()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/StatusbarRight;->detachAllViewsFromParent()V

    .line 70
    iget-object v2, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 71
    .local v0, childs:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/StatusbarRight;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 73
    .end local v0           #childs:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/StatusbarRight;->invalidate()V

    .line 74
    return-void
.end method

.method private createMiddleView()Landroid/view/View;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, v:Landroid/widget/ImageView;
    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public addViewForStatusbar(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5
    .parameter "child"
    .parameter "TAG"

    .prologue
    const v4, 0x7f020061

    const/4 v3, 0x1

    .line 83
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 90
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    :goto_1
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/StatusbarRight;->addViewForLayout()V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    invoke-direct {p0}, Lcom/softwinner/launcher/ui/StatusbarRight;->createMiddleView()Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, v:Landroid/view/View;
    if-eqz p2, :cond_3

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setTagViewVisible(Ljava/lang/Object;Z)V
    .locals 6
    .parameter "o"
    .parameter "isVisible"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/ui/StatusbarRight;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, v:Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_mid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/softwinner/launcher/ui/StatusbarRight;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, vm:Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    if-nez p2, :cond_2

    .line 111
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateWifi(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    const-string v6, "status"

    const-string v8, "0"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_0
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    move-object v3, v6

    check-cast v3, Landroid/net/NetworkInfo;

    .line 125
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v6, "status"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 151
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 153
    const-string v6, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 156
    .local v1, enabled:Z
    :goto_1
    if-nez v1, :cond_2

    .line 157
    const-string v6, "status"

    const-string v8, "3"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v6, "wifi_icon"

    invoke-virtual {p0, v6, v7}, Lcom/softwinner/launcher/ui/StatusbarRight;->setTagViewVisible(Ljava/lang/Object;Z)V

    .line 183
    .end local v1           #enabled:Z
    :cond_2
    :goto_2
    return-void

    .line 128
    .restart local v3       #info:Landroid/net/NetworkInfo;
    :pswitch_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 129
    iput-boolean v1, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mIsWifiConnected:Z

    .line 131
    iget v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLastWifiSignalLevel:I

    if-ne v6, v10, :cond_3

    .line 132
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    aget v2, v6, v7

    .line 136
    .local v2, iconId:I
    :goto_3
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mWifiSignal:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    const-string v6, "status"

    const-string v8, "1"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v6, "wifi_icon"

    invoke-virtual {p0, v6, v1}, Lcom/softwinner/launcher/ui/StatusbarRight;->setTagViewVisible(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 134
    .end local v2           #iconId:I
    :cond_3
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    iget v8, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLastWifiSignalLevel:I

    aget v2, v6, v8

    .restart local v2       #iconId:I
    goto :goto_3

    .line 141
    .end local v2           #iconId:I
    :cond_4
    iput v10, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLastWifiSignalLevel:I

    .line 142
    iput-boolean v7, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mIsWifiConnected:Z

    .line 143
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    aget v2, v6, v7

    .line 144
    .restart local v2       #iconId:I
    const-string v6, "status"

    const-string v8, "2"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mWifiSignal:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    const-string v6, "wifi_icon"

    invoke-virtual {p0, v6, v7}, Lcom/softwinner/launcher/ui/StatusbarRight;->setTagViewVisible(Ljava/lang/Object;Z)V

    goto :goto_0

    .end local v2           #iconId:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_5
    move v1, v7

    .line 153
    goto :goto_1

    .line 161
    :cond_6
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 162
    const-string v6, "connected"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    .restart local v1       #enabled:Z
    if-nez v1, :cond_2

    .line 165
    const-string v6, "status"

    const-string v8, "4"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v6, "wifi_icon"

    invoke-virtual {p0, v6, v7}, Lcom/softwinner/launcher/ui/StatusbarRight;->setTagViewVisible(Ljava/lang/Object;Z)V

    goto :goto_2

    .line 168
    .end local v1           #enabled:Z
    :cond_7
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    const-string v6, "newRssi"

    const/16 v8, -0xc8

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 171
    .local v4, newRssi:I
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    array-length v6, v6

    invoke-static {v4, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    .line 172
    .local v5, newSignalLevel:I
    iget v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLastWifiSignalLevel:I

    if-eq v5, v6, :cond_2

    .line 173
    iput v5, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mLastWifiSignalLevel:I

    .line 174
    iget-boolean v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mIsWifiConnected:Z

    if-eqz v6, :cond_8

    .line 175
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    aget v2, v6, v5

    .line 179
    .restart local v2       #iconId:I
    :goto_4
    const-string v6, "status"

    const-string v7, "5"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->mWifiSignal:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 177
    .end local v2           #iconId:I
    :cond_8
    iget-object v6, p0, Lcom/softwinner/launcher/ui/StatusbarRight;->WIFI_SIGNAL_ID:[I

    aget v2, v6, v7

    .restart local v2       #iconId:I
    goto :goto_4

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
