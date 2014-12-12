.class public Lcom/softwinner/launcher/ui/OptionMenu;
.super Landroid/app/Dialog;
.source "OptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;,
        Lcom/softwinner/launcher/ui/OptionMenu$IconAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/Adapter;

.field protected mContentList:Landroid/widget/ListView;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mTitle:Landroid/widget/TextView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 106
    const v1, 0x7f0b0003

    invoke-direct {p0, p1, v1}, Lcom/softwinner/launcher/ui/OptionMenu;-><init>(Landroid/content/Context;I)V

    .line 107
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/OptionMenu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 108
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mView:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mView:Landroid/view/View;

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mIcon:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mView:Landroid/view/View;

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mTitle:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mView:Landroid/view/View;

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mContentList:Landroid/widget/ListView;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 121
    return-void
.end method

.method public static createIconAdapter(Landroid/content/Context;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    new-instance v0, Lcom/softwinner/launcher/ui/OptionMenu$IconAdapter;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ui/OptionMenu$IconAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createTextAdapter(Landroid/content/Context;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 174
    new-instance v0, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;

    invoke-direct {v0, p0}, Lcom/softwinner/launcher/ui/OptionMenu$TextAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mAdapter:Landroid/widget/Adapter;

    .line 179
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    return-void
.end method

.method public setClickCallback(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    return-void
.end method

.method public setContentView(Landroid/widget/Adapter;Landroid/widget/Adapter;)V
    .locals 0
    .parameter "adapterView"
    .parameter "adapter"

    .prologue
    .line 143
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    return-void
.end method

.method public setSelectedCallback(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 167
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public show(IIIIZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "isLeft"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/softwinner/launcher/ui/OptionMenu;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 130
    .local v2, window:Landroid/view/Window;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 131
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 133
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 134
    iget-object v3, p0, Lcom/softwinner/launcher/ui/OptionMenu;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/softwinner/launcher/ui/OptionMenu;->setContentView(Landroid/view/View;)V

    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 136
    invoke-virtual {v2, p3, p4}, Landroid/view/Window;->setLayout(II)V

    .line 137
    if-eqz p5, :cond_0

    const v0, 0x7f0b0005

    .line 138
    .local v0, animId:I
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 139
    return-void

    .line 137
    .end local v0           #animId:I
    :cond_0
    const v0, 0x7f0b0006

    goto :goto_0
.end method
