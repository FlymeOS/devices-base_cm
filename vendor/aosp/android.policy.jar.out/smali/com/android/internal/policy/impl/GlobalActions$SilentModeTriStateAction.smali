.class final Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioManager"    # Landroid/media/AudioManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1115
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1116
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1117
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1118
    return-void

    .line 1108
    :array_0
    .array-data 4
        0x10202f8
        0x10202f9
        0x10202fa
        0x10202fb
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x2

    .line 1121
    if-ne p1, v0, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    const/4 v0, 0x1

    .line 1128
    :cond_0
    return v0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1138
    const v6, 0x1090055

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1140
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 1141
    .local v2, "ringerMode":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "zen_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1143
    .local v5, "zenMode":I
    const/4 v3, 0x0

    .line 1144
    .local v3, "selectedIndex":I
    if-eqz v5, :cond_2

    .line 1145
    if-ne v5, v10, :cond_1

    .line 1146
    const/4 v3, 0x0

    .line 1156
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 1157
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1158
    .local v1, "itemView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v10, :cond_4

    .line 1159
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1147
    .end local v0    # "i":I
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    if-ne v5, v7, :cond_0

    .line 1148
    const/4 v3, 0x1

    goto :goto_0

    .line 1150
    :cond_2
    if-ne v2, v7, :cond_3

    .line 1151
    const/4 v3, 0x2

    goto :goto_0

    .line 1152
    :cond_3
    if-ne v2, v10, :cond_0

    .line 1153
    const/4 v3, 0x3

    goto :goto_0

    .line 1162
    .restart local v0    # "i":I
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_4
    if-ne v3, v0, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1165
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    move v6, v8

    .line 1162
    goto :goto_3

    .line 1167
    .end local v1    # "itemView":Landroid/view/View;
    :cond_6
    return-object v4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1133
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1182
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1192
    .local v0, "index":I
    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_5

    .line 1193
    :cond_1
    if-nez v0, :cond_2

    move v2, v4

    .line 1196
    .local v2, "zenMode":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "zen_mode"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1201
    .end local v2    # "zenMode":I
    :goto_1
    if-eq v0, v4, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 1202
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v1

    .line 1203
    .local v1, "ringerMode":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1205
    .end local v1    # "ringerMode":I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1206
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1198
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "zen_mode"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1171
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1186
    return-void
.end method
