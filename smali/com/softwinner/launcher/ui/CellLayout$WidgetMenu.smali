.class public Lcom/softwinner/launcher/ui/CellLayout$WidgetMenu;
.super Landroid/app/AlertDialog;
.source "CellLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetMenu"
.end annotation


# static fields
.field protected static final BUTTON_ADD_WIDGET:I = -0x1

.field protected static final BUTTON_DEL_WIDGET:I = -0x3


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/CellLayout;


# direct methods
.method protected constructor <init>(Lcom/softwinner/launcher/ui/CellLayout;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/softwinner/launcher/ui/CellLayout$WidgetMenu;->this$0:Lcom/softwinner/launcher/ui/CellLayout;

    .line 60
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, -0x1

    const v1, 0x7f0a0012

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/softwinner/launcher/ui/CellLayout$WidgetMenu;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    const/4 v0, -0x3

    const v1, 0x7f0a0015

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/softwinner/launcher/ui/CellLayout$WidgetMenu;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 67
    packed-switch p2, :pswitch_data_0

    .line 75
    :pswitch_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
