.class Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/softwinner/launcher/ui/DigitalClock;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;ZLcom/softwinner/launcher/ui/DigitalClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;->this$0:Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/softwinner/launcher/ui/DigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/softwinner/launcher/ui/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/softwinner/launcher/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/softwinner/launcher/ui/DigitalClock;->access$002(Lcom/softwinner/launcher/ui/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/softwinner/launcher/ui/DigitalClock;

    #calls: Lcom/softwinner/launcher/ui/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/softwinner/launcher/ui/DigitalClock;->access$100(Lcom/softwinner/launcher/ui/DigitalClock;)V

    .line 81
    return-void
.end method
