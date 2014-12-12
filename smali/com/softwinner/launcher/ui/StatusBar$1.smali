.class Lcom/softwinner/launcher/ui/StatusBar$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/StatusBar;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/StatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/softwinner/launcher/ui/StatusBar$1;->this$0:Lcom/softwinner/launcher/ui/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/softwinner/launcher/ui/StatusBar$1;->this$0:Lcom/softwinner/launcher/ui/StatusBar;

    invoke-virtual {v0, p2}, Lcom/softwinner/launcher/ui/StatusBar;->processReceiver(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
