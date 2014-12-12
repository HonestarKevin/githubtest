.class Lcom/softwinner/launcher/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/LauncherApplication;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/softwinner/launcher/LauncherApplication$1;->this$0:Lcom/softwinner/launcher/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 87
    sget-object v0, Lcom/softwinner/launcher/LauncherApplication;->mModel:Lcom/softwinner/launcher/LauncherModel;

    iget-object v1, p0, Lcom/softwinner/launcher/LauncherApplication$1;->this$0:Lcom/softwinner/launcher/LauncherApplication;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/softwinner/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 88
    return-void
.end method
