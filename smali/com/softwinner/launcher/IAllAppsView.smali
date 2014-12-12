.class public interface abstract Lcom/softwinner/launcher/IAllAppsView;
.super Ljava/lang/Object;
.source "IAllAppsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/IAllAppsView$Watcher;
    }
.end annotation


# virtual methods
.method public abstract addApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpState()V
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onCreateMenu()V
.end method

.method public abstract removeApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWatcher(Lcom/softwinner/launcher/IAllAppsView$Watcher;)V
.end method

.method public abstract surrender()V
.end method

.method public abstract updateApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/softwinner/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zoom(FZ)V
.end method
