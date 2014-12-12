.class Lcom/softwinner/launcher/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/softwinner/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/softwinner/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/softwinner/launcher/Launcher;

    .line 550
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 551
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/softwinner/launcher/Launcher;

    #calls: Lcom/softwinner/launcher/Launcher;->onAppWidgetReset()V
    invoke-static {v0}, Lcom/softwinner/launcher/Launcher;->access$600(Lcom/softwinner/launcher/Launcher;)V

    .line 556
    return-void
.end method
