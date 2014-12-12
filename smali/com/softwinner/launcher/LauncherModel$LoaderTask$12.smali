.class Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/LauncherModel$LoaderTask;->onlyBindAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1105
    .local v1, t:J
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iget-object v4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/softwinner/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/softwinner/launcher/LauncherModel$Callbacks;)Lcom/softwinner/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1106
    .local v0, callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1107
    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->val$list:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1110
    :cond_0
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bound all "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$12;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apps from cache in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method
