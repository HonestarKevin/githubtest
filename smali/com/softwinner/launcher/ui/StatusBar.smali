.class public Lcom/softwinner/launcher/ui/StatusBar;
.super Landroid/widget/RelativeLayout;
.source "StatusBar.java"

# interfaces
.implements Lcom/softwinner/launcher/IStatusBar;


# instance fields
.field private final HOME_ID:[I

.field private mBr:Landroid/content/BroadcastReceiver;

.field private mHome:Landroid/widget/ImageView;

.field private mStatusbarRight:Lcom/softwinner/launcher/ui/StatusbarRight;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->HOME_ID:[I

    .line 27
    new-instance v0, Lcom/softwinner/launcher/ui/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ui/StatusBar$1;-><init>(Lcom/softwinner/launcher/ui/StatusBar;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mBr:Landroid/content/BroadcastReceiver;

    .line 37
    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->HOME_ID:[I

    .line 27
    new-instance v0, Lcom/softwinner/launcher/ui/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ui/StatusBar$1;-><init>(Lcom/softwinner/launcher/ui/StatusBar;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mBr:Landroid/content/BroadcastReceiver;

    .line 41
    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/softwinner/launcher/ui/StatusBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Zoomed(Z)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mHome:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusBar;->HOME_ID:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mHome:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusBar;->HOME_ID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/StatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mHome:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mHome:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusBar;->HOME_ID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mHome:Landroid/widget/ImageView;

    new-instance v1, Lcom/softwinner/launcher/ui/StatusBar$2;

    invoke-direct {v1, p0}, Lcom/softwinner/launcher/ui/StatusBar$2;-><init>(Lcom/softwinner/launcher/ui/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/softwinner/launcher/ui/StatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/StatusbarRight;

    iput-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mStatusbarRight:Lcom/softwinner/launcher/ui/StatusbarRight;

    .line 65
    return-void
.end method

.method public processReceiver(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mStatusbarRight:Lcom/softwinner/launcher/ui/StatusbarRight;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mStatusbarRight:Lcom/softwinner/launcher/ui/StatusbarRight;

    invoke-virtual {v0, p1}, Lcom/softwinner/launcher/ui/StatusbarRight;->updateWifi(Landroid/content/Intent;)V

    .line 85
    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/softwinner/launcher/ui/StatusBar;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/StatusBar;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method
