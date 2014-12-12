.class Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/softwinner/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/softwinner/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/softwinner/launcher/Launcher;Lcom/softwinner/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/softwinner/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 734
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/softwinner/launcher/Launcher;

    invoke-virtual {v2}, Lcom/softwinner/launcher/Launcher;->closeSystemDialogs()V

    .line 735
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, reason:Ljava/lang/String;
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    const/4 v0, 0x1

    .line 738
    .local v0, animate:Z
    iget-object v2, p0, Lcom/softwinner/launcher/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/softwinner/launcher/Launcher;

    #getter for: Lcom/softwinner/launcher/Launcher;->mPaused:Z
    invoke-static {v2}, Lcom/softwinner/launcher/Launcher;->access$700(Lcom/softwinner/launcher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    .end local v0           #animate:Z
    :cond_0
    return-void
.end method
