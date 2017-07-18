.class Landroid/content/res/flymetheme/FlymeThemeService$2;
.super Landroid/os/Handler;
.source "FlymeThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/FlymeThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/FlymeThemeService;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/FlymeThemeService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x20

    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string/jumbo v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WAKE_UP_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get12(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    const-string/jumbo v3, "   "

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get16(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 102
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get14(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    .line 106
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get12(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get14(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    .line 109
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get16(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 108
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get14(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get5(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get14(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get10(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    .line 115
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get11(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    int-to-long v2, v2

    .line 114
    const/16 v4, 0x3e9

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-set1(Landroid/content/res/flymetheme/FlymeThemeService;I)I

    goto/16 :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string/jumbo v1, "FlymeThemeService"

    const-string/jumbo v2, "CHANGE_WALLPAPER_MESSAGE------TimeOut"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get2(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get2(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "changeWallpaperIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get4(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get4(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get5(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 126
    :cond_4
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get4(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get3(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v2

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 134
    .end local v0    # "changeWallpaperIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    const-string/jumbo v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "    "

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get7(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "   "

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get15(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 135
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get7(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 141
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get15(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 140
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get5(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get10(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    .line 146
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get6(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    int-to-long v2, v2

    .line 145
    const/16 v4, 0x3eb

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$2;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-set0(Landroid/content/res/flymetheme/FlymeThemeService;I)I

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
