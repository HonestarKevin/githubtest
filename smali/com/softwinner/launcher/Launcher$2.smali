.class Lcom/softwinner/launcher/Launcher$2;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/Launcher;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/Launcher;

.field final synthetic val$localeConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/Launcher;Ljava/lang/String;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/softwinner/launcher/Launcher$2;->this$0:Lcom/softwinner/launcher/Launcher;

    iput-object p3, p0, Lcom/softwinner/launcher/Launcher$2;->val$localeConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher$2;->this$0:Lcom/softwinner/launcher/Launcher;

    iget-object v1, p0, Lcom/softwinner/launcher/Launcher$2;->val$localeConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    #calls: Lcom/softwinner/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    invoke-static {v0, v1}, Lcom/softwinner/launcher/Launcher;->access$500(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V

    .line 422
    return-void
.end method
