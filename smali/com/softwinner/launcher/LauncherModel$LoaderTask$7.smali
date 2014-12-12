.class Lcom/softwinner/launcher/LauncherModel$LoaderTask$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherModel$LoaderTask$7;->this$1:Lcom/softwinner/launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    const-string v0, "Launcher.Model"

    const-string v1, "Going to start binding widgets soon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void
.end method
