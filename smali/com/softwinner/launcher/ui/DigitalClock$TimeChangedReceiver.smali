.class Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/softwinner/launcher/ui/DigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/ui/DigitalClock;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 65
    invoke-virtual {p1}, Lcom/softwinner/launcher/ui/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 73
    .local v1, timezoneChanged:Z
    iget-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/softwinner/launcher/ui/DigitalClock;

    .line 74
    .local v0, clock:Lcom/softwinner/launcher/ui/DigitalClock;
    if-eqz v0, :cond_0

    .line 75
    #getter for: Lcom/softwinner/launcher/ui/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/softwinner/launcher/ui/DigitalClock;->access$200(Lcom/softwinner/launcher/ui/DigitalClock;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;-><init>(Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;ZLcom/softwinner/launcher/ui/DigitalClock;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    goto :goto_0
.end method
