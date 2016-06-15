.class final Landroid/text/util/UrlSpanHelper$6;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showWebDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openUri:Landroid/net/Uri;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 340
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 342
    .local v0, "context":Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 344
    :pswitch_0
    sget-object v2, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    # invokes: Landroid/text/util/UrlSpanHelper;->showWarning(Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/text/util/UrlSpanHelper;->access$1000(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .local v1, "intent":Landroid/content/Intent;
    # invokes: Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Landroid/text/util/UrlSpanHelper;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    const-string v3, "geo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    # invokes: Landroid/text/util/UrlSpanHelper;->setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v2, v3}, Landroid/text/util/UrlSpanHelper;->access$500(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$6;->val$url:Ljava/lang/String;

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$6;->val$widget:Landroid/view/View;

    # invokes: Landroid/text/util/UrlSpanHelper;->setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v2, v3}, Landroid/text/util/UrlSpanHelper;->access$500(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 361
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "vnd.android.cursor.dir/bookmark"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v2, "extra_url"

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$6;->val$openUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    # invokes: Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Landroid/text/util/UrlSpanHelper;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
