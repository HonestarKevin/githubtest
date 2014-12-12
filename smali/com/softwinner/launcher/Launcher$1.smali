.class Lcom/softwinner/launcher/Launcher$1;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwinner/launcher/Launcher;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/softwinner/launcher/Launcher$LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/softwinner/launcher/Launcher$1;->this$0:Lcom/softwinner/launcher/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/softwinner/launcher/Launcher$LocaleConfiguration;
    .locals 2
    .parameter "unused"

    .prologue
    .line 384
    new-instance v0, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/softwinner/launcher/Launcher$1;)V

    .line 385
    .local v0, localeConfiguration:Lcom/softwinner/launcher/Launcher$LocaleConfiguration;
    iget-object v1, p0, Lcom/softwinner/launcher/Launcher$1;->this$0:Lcom/softwinner/launcher/Launcher;

    #calls: Lcom/softwinner/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    invoke-static {v1, v0}, Lcom/softwinner/launcher/Launcher;->access$200(Landroid/content/Context;Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V

    .line 386
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/Launcher$1;->doInBackground([Ljava/lang/Void;)Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 391
    invoke-static {p1}, Lcom/softwinner/launcher/Launcher;->access$302(Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    .line 392
    iget-object v0, p0, Lcom/softwinner/launcher/Launcher$1;->this$0:Lcom/softwinner/launcher/Launcher;

    #calls: Lcom/softwinner/launcher/Launcher;->checkForLocaleChange()V
    invoke-static {v0}, Lcom/softwinner/launcher/Launcher;->access$400(Lcom/softwinner/launcher/Launcher;)V

    .line 393
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 381
    check-cast p1, Lcom/softwinner/launcher/Launcher$LocaleConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/softwinner/launcher/Launcher$1;->onPostExecute(Lcom/softwinner/launcher/Launcher$LocaleConfiguration;)V

    return-void
.end method
