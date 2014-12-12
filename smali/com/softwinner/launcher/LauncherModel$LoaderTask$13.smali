.class Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/LauncherModel$LoaderTask;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

.field final synthetic val$added:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

.field final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;Lcom/softwinner/launcher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$first:Z

    iput-object p4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$added:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1193
    .local v0, t:J
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    if-eqz v2, :cond_1

    .line 1194
    iget-boolean v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$first:Z

    if-eqz v2, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1200
    :goto_0
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_1
    return-void

    .line 1197
    :cond_0
    iget-object v2, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$callbacks:Lcom/softwinner/launcher/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$13;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/softwinner/launcher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1204
    :cond_1
    const-string v2, "Launcher.Model"

    const-string v3, "not binding apps: no Launcher activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
