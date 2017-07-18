.class final Landroid/text/util/UrlSpanHelper$1;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showDateTimeDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventTitle:Ljava/lang/CharSequence;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/CharSequence;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "val$widget"    # Landroid/view/View;
    .param p2, "val$eventType"    # Ljava/lang/String;
    .param p3, "val$value"    # Ljava/lang/CharSequence;
    .param p4, "val$eventTitle"    # Ljava/lang/CharSequence;
    .param p5, "val$title"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$1;->val$widget:Landroid/view/View;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventTitle:Ljava/lang/CharSequence;

    iput-object p5, p0, Landroid/text/util/UrlSpanHelper$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$widget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 121
    .local v4, "context":Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 124
    :pswitch_0
    :try_start_0
    const-string/jumbo v0, "1"

    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/util/UrlSpanHelper;->-wrap3(Ljava/lang/CharSequence;)J

    move-result-wide v8

    .line 126
    .local v8, "sTime":J
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventTitle:Ljava/lang/CharSequence;

    invoke-static {v8, v9, v4, v0}, Landroid/text/util/UrlSpanHelper;->-wrap4(JLandroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v8    # "sTime":J
    :catch_0
    move-exception v6

    .line 138
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 140
    .restart local v8    # "sTime":J
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventTitle:Ljava/lang/CharSequence;

    invoke-static {v8, v9, v4, v0}, Landroid/text/util/UrlSpanHelper;->-wrap4(JLandroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "sTime":J
    :cond_0
    :try_start_1
    const-string/jumbo v0, "2"

    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/util/UrlSpanHelper;->-wrap3(Ljava/lang/CharSequence;)J

    move-result-wide v8

    .line 129
    .restart local v8    # "sTime":J
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventTitle:Ljava/lang/CharSequence;

    invoke-static {v8, v9, v4, v0}, Landroid/text/util/UrlSpanHelper;->-wrap5(JLandroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    .end local v8    # "sTime":J
    :cond_1
    const-string/jumbo v0, "3"

    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/util/UrlSpanHelper;->-wrap2(Ljava/lang/CharSequence;)[J

    move-result-object v7

    .line 132
    .local v7, "times":[J
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    const/4 v2, 0x1

    aget-wide v2, v7, v2

    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventTitle:Ljava/lang/CharSequence;

    invoke-static/range {v0 .. v5}, Landroid/text/util/UrlSpanHelper;->-wrap6(JJLandroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    .end local v7    # "times":[J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 135
    .restart local v8    # "sTime":J
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventTitle:Ljava/lang/CharSequence;

    invoke-static {v8, v9, v4, v0}, Landroid/text/util/UrlSpanHelper;->-wrap4(JLandroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    .end local v8    # "sTime":J
    :pswitch_1
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$title:Ljava/lang/String;

    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$1;->val$widget:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/text/util/UrlSpanHelper;->-wrap8(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 148
    :pswitch_2
    :try_start_2
    const-string/jumbo v0, "3"

    iget-object v1, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/util/UrlSpanHelper;->-wrap2(Ljava/lang/CharSequence;)[J

    move-result-object v7

    .line 150
    .restart local v7    # "times":[J
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    invoke-static {v0, v1, v4}, Landroid/text/util/UrlSpanHelper;->-wrap7(JLandroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 155
    .end local v7    # "times":[J
    :catch_1
    move-exception v6

    .line 156
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 158
    .restart local v8    # "sTime":J
    invoke-static {v8, v9, v4}, Landroid/text/util/UrlSpanHelper;->-wrap7(JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 152
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "sTime":J
    :cond_3
    :try_start_3
    iget-object v0, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/util/UrlSpanHelper;->-wrap3(Ljava/lang/CharSequence;)J

    move-result-wide v8

    .line 153
    .restart local v8    # "sTime":J
    invoke-static {v8, v9, v4}, Landroid/text/util/UrlSpanHelper;->-wrap7(JLandroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
