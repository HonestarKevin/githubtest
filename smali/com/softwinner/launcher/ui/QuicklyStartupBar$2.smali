.class Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;
.super Ljava/lang/Object;
.source "QuicklyStartupBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/launcher/ui/QuicklyStartupBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;


# direct methods
.method constructor <init>(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/16 v6, 0x5a0

    const/16 v5, 0x500

    const/16 v3, 0x400

    const/16 v2, 0x384

    const/16 v4, 0x17

    .line 356
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    const v1, 0x3ffffffd

    #setter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mSelectedPosition:I
    invoke-static {v0, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$002(Lcom/softwinner/launcher/ui/QuicklyStartupBar;I)I

    .line 357
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    const/16 v1, 0x780

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    const/16 v1, 0x690

    if-lt v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 359
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$700(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->max_down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$800(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setViewForMiddle()V
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)V

    .line 380
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mText:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->startupbar_text:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setTitle(Ljava/util/ArrayList;[I)V
    invoke-static {v0, v1, v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I)V

    .line 381
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v4, v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 383
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    const/16 v1, 0x690

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 361
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$900(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1000(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 362
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xmax_down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-lt v0, v5, :cond_2

    .line 364
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 365
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->min_down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 367
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1700(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1800(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 368
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$1900(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmax_down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2000(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 370
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 371
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2300(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->xvmax_down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2400(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->g_width:I
    invoke-static {v0}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 373
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 374
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2700(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->vmin_down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2800(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mUpImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$2900(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->up_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3000(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    .line 377
    iget-object v0, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    iget-object v1, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->mDownImage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$600(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_selected_list:[I
    invoke-static {v2}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3100(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/softwinner/launcher/ui/QuicklyStartupBar$2;->this$0:Lcom/softwinner/launcher/ui/QuicklyStartupBar;

    #getter for: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->down_image_unselected_list:[I
    invoke-static {v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$3200(Lcom/softwinner/launcher/ui/QuicklyStartupBar;)[I

    move-result-object v3

    #calls: Lcom/softwinner/launcher/ui/QuicklyStartupBar;->setImage(Ljava/util/ArrayList;[I[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/softwinner/launcher/ui/QuicklyStartupBar;->access$500(Lcom/softwinner/launcher/ui/QuicklyStartupBar;Ljava/util/ArrayList;[I[I)V

    goto/16 :goto_0
.end method
