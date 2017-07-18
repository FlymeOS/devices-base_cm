.class final Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "MzResolverActivity.java"

# interfaces
.implements Lcom/meizu/widget/DragGridView$ItemDragShadowGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveGridAdapter"
.end annotation


# instance fields
.field currentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mIsDetail:Z

.field private mItemLayoutId:I

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/MzResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 945
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 935
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    .line 940
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIsDetail:Z

    .line 941
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIdMap:Ljava/util/HashMap;

    .line 942
    sget v0, Lcom/flyme/internal/R$layout;->mz_resolve_grid_item:I

    iput v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mItemLayoutId:I

    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    .line 949
    iput-object p4, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 950
    iput-object p5, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mBaseResolveList:Ljava/util/List;

    .line 951
    iput p6, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLaunchedFromUid:I

    .line 952
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    .line 954
    iput-boolean p7, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    .line 956
    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    .line 957
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->rebuildList()V

    .line 947
    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 1152
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 1153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    .line 1154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1155
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1153
    if-eqz v1, :cond_0

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1153
    if-eqz v1, :cond_0

    .line 1157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    .line 1159
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    move-object/from16 v0, p4

    invoke-static {v1, v2, v0}, Lcom/android/internal/app/MzResolverActivity;->-wrap1(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_1
    return-void

    .line 1164
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/MzResolverActivity;->-set2(Lcom/android/internal/app/MzResolverActivity;Z)Z

    .line 1165
    const/4 v14, 0x0

    .line 1166
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1167
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_3

    .line 1168
    const/4 v14, 0x1

    .line 1170
    :cond_3
    if-nez v14, :cond_6

    .line 1173
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1174
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_5

    .line 1176
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1177
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1178
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1179
    :cond_4
    const/4 v14, 0x1

    .line 1186
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1188
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_6
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_1

    .line 1189
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1190
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_7

    .line 1191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1192
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1190
    if-eqz v1, :cond_7

    .line 1193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1190
    if-eqz v1, :cond_7

    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    .line 1196
    :cond_7
    if-eqz v14, :cond_a

    .line 1197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/MzResolverActivity;->-wrap1(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    .line 1200
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    .line 1199
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_8
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1182
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1203
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/MzResolverActivity;->-wrap1(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    .line 1206
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    .line 1205
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 22

    .prologue
    .line 1005
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    const/high16 v5, 0x10000

    .line 1005
    invoke-interface {v1, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    .line 1042
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_12

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1046
    .local v11, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1054
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    .line 1055
    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_7

    .line 1056
    :cond_1
    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_7

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    if-ne v1, v2, :cond_2

    .line 1058
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1060
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1061
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1008
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "N":I
    .end local v16    # "i":I
    :catch_0
    move-exception v20

    .line 1009
    .local v20, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "MzResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1017
    .end local v20    # "re":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    .line 1019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get3(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x40

    .line 1018
    :goto_3
    const/high16 v5, 0x10000

    or-int/2addr v1, v5

    .line 1017
    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .restart local v16    # "i":I
    :goto_4
    if-ltz v16, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1029
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLaunchedFromUid:I

    .line 1030
    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1028
    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v15

    .line 1031
    .local v15, "granted":I
    if-eqz v15, :cond_5

    .line 1033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    if-ne v1, v2, :cond_4

    .line 1034
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1036
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1026
    :cond_5
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 1019
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "granted":I
    .end local v16    # "i":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 1046
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "N":I
    .restart local v16    # "i":I
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1065
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v1, 0x1

    if-le v13, v1, :cond_9

    .line 1076
    new-instance v19, Lcom/meizu/util/AppDisplayNameComparator;

    .line 1077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1076
    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Lcom/meizu/util/AppDisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 1078
    .local v19, "rComparator":Lcom/meizu/util/AppDisplayNameComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/internal/app/MzResolverActivity;->-wrap2(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    .line 1087
    .end local v19    # "rComparator":Lcom/meizu/util/AppDisplayNameComparator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_d

    .line 1088
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_d

    .line 1089
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v16

    .line 1090
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_a

    .line 1088
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1094
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1093
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 1095
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_b

    .line 1096
    const-string/jumbo v1, "MzResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1099
    :cond_b
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1100
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1101
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_c

    move-object/from16 v18, v6

    .line 1102
    check-cast v18, Landroid/content/pm/LabeledIntent;

    .line 1103
    .local v18, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1104
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1105
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1106
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1108
    .end local v18    # "li":Landroid/content/pm/LabeledIntent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    .line 1109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    .line 1108
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1115
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1116
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 1117
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1118
    .local v12, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/MzResolverActivity;->-set2(Lcom/android/internal/app/MzResolverActivity;Z)Z

    .line 1119
    const/16 v16, 0x1

    :goto_7
    move/from16 v0, v16

    if-ge v0, v13, :cond_11

    .line 1120
    if-nez v12, :cond_e

    .line 1121
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1123
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1124
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1125
    .local v21, "riLabel":Ljava/lang/CharSequence;
    if-nez v21, :cond_f

    .line 1126
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1128
    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1119
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1131
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    add-int/lit8 v10, v16, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 1132
    move-object v11, v3

    .line 1133
    move-object/from16 v12, v21

    .line 1134
    move/from16 v9, v16

    goto :goto_8

    .line 1137
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v21    # "riLabel":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->syncAppDisplayListIfNeeded(Ljava/util/List;)V

    .line 1142
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_12

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 998
    .end local v9    # "start":I
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v16    # "i":I
    .end local v17    # "k":I
    :cond_12
    return-void
.end method

.method private storeSortedDispalyResolves(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolves":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;>;"
    const/4 v11, 0x0

    .line 1374
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    .line 1375
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 1376
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1377
    :goto_1
    iget-object v10, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v10, v3}, Lcom/android/internal/app/MzResolverActivity;->-wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz p1, :cond_6

    .line 1378
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_6

    .line 1379
    iget-object v10, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v10}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1382
    .local v7, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1383
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1384
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    iget-object v6, v10, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 1385
    .local v6, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_3

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1387
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_3
    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    add-int/lit8 v10, v0, -0x1

    if-eq v2, v10, :cond_0

    .line 1391
    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1375
    .end local v0    # "N":I
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v2    # "i":I
    .end local v6    # "resolve":Landroid/content/pm/ResolveInfo;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v5, 0x0

    .local v5, "intentType":Ljava/lang/String;
    goto :goto_0

    .line 1376
    .end local v5    # "intentType":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .local v4, "intentAction":Ljava/lang/String;
    goto :goto_1

    .line 1386
    .end local v4    # "intentAction":Ljava/lang/String;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v6    # "resolve":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 1395
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v6    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v10, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v10}, Lcom/android/internal/app/MzResolverActivity;->-get1(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1396
    invoke-static {v7, v5, v4}, Landroid/provider/Settings$ShareList;->getSortedListByType(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1398
    .local v9, "sortlist":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_4
    invoke-static {v12, v10}, Lcom/android/internal/app/MzResolverActivity;->-set0(Lcom/android/internal/app/MzResolverActivity;Z)Z

    .line 1401
    .end local v9    # "sortlist":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v10}, Lcom/android/internal/app/MzResolverActivity;->-get1(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1403
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1402
    invoke-static {v7, v5, v4, v10}, Landroid/provider/Settings$ShareList;->updateList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :goto_5
    return-void

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "sortlist":Ljava/lang/String;
    :cond_7
    move v10, v11

    .line 1398
    goto :goto_4

    .line 1406
    .end local v9    # "sortlist":Ljava/lang/String;
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1405
    invoke-static {v7, v5, v4, v10}, Landroid/provider/Settings$ShareList;->storeSortedList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_5
.end method

.method private storeSortedResolves(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1346
    .local p1, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    .line 1347
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 1348
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1349
    :goto_1
    iget-object v9, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v9, v3}, Lcom/android/internal/app/MzResolverActivity;->-wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz p1, :cond_5

    .line 1350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_5

    .line 1351
    iget-object v9, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v9}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1354
    .local v7, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1355
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1356
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1357
    .local v6, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_3

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1359
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_3
    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    add-int/lit8 v9, v0, -0x1

    if-eq v2, v9, :cond_0

    .line 1363
    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1347
    .end local v0    # "N":I
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v2    # "i":I
    .end local v6    # "resolve":Landroid/content/pm/ResolveInfo;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v5, 0x0

    .local v5, "intentType":Ljava/lang/String;
    goto :goto_0

    .line 1348
    .end local v5    # "intentType":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .local v4, "intentAction":Ljava/lang/String;
    goto :goto_1

    .line 1358
    .end local v4    # "intentAction":Ljava/lang/String;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v6    # "resolve":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 1367
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v6    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1366
    invoke-static {v7, v5, v4, v9}, Landroid/provider/Settings$ShareList;->updateList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method

.method private syncAppDisplayListIfNeeded(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    .line 1489
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 1490
    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1494
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v15, v6}, Lcom/android/internal/app/MzResolverActivity;->-wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1495
    return-void

    .line 1489
    :cond_0
    const/4 v8, 0x0

    .local v8, "intentType":Ljava/lang/String;
    goto :goto_0

    .line 1491
    .end local v8    # "intentType":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .local v7, "intentAction":Ljava/lang/String;
    goto :goto_1

    .line 1499
    .end local v7    # "intentAction":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    if-lez v2, :cond_7

    .line 1500
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v15}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1501
    .local v14, "resolver":Landroid/content/ContentResolver;
    invoke-static {v14, v8, v7}, Landroid/provider/Settings$ShareList;->getSortedListByType(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1504
    .local v12, "pkgNamesInDb":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1507
    const-string/jumbo v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1510
    .local v11, "pkgNamesArrayInDb":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1513
    .local v13, "resolve":Landroid/content/pm/ResolveInfo;
    array-length v1, v11

    .line 1514
    .local v1, "M":I
    add-int/lit8 v5, v1, -0x1

    .end local v13    # "resolve":Landroid/content/pm/ResolveInfo;
    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_6

    .line 1516
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v2, :cond_3

    .line 1517
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    iget-object v13, v15, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 1518
    .local v13, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_4

    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1520
    .local v3, "ci":Landroid/content/pm/ComponentInfo;
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1522
    .local v10, "pkgName":Ljava/lang/String;
    aget-object v15, v11, v5

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1523
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .line 1524
    .local v4, "displayResolveInfo":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1514
    .end local v3    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v4    # "displayResolveInfo":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v13    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1519
    .restart local v13    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v3    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_4

    .line 1516
    .restart local v10    # "pkgName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1530
    .end local v3    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v9    # "j":I
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v13    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->storeSortedDispalyResolves(Ljava/util/List;)V

    .line 1486
    .end local v1    # "M":I
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v11    # "pkgNamesArrayInDb":[Ljava/lang/String;
    .end local v12    # "pkgNamesInDb":Ljava/lang/String;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    :cond_7
    return-void
.end method

.method private syncAppListIfNeeded(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p1, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    .line 1414
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 1415
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1419
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v14, v5}, Lcom/android/internal/app/MzResolverActivity;->-wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1420
    return-void

    .line 1414
    :cond_0
    const/4 v7, 0x0

    .local v7, "intentType":Ljava/lang/String;
    goto :goto_0

    .line 1416
    .end local v7    # "intentType":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .local v6, "intentAction":Ljava/lang/String;
    goto :goto_1

    .line 1424
    .end local v6    # "intentAction":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    if-lez v2, :cond_7

    .line 1425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v14}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1426
    .local v13, "resolver":Landroid/content/ContentResolver;
    invoke-static {v13, v7, v6}, Landroid/provider/Settings$ShareList;->getSortedListByType(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1429
    .local v11, "pkgNamesInDb":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 1432
    const-string/jumbo v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1434
    .local v10, "pkgNamesArrayInDb":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1437
    .local v12, "resolve":Landroid/content/pm/ResolveInfo;
    array-length v1, v10

    .line 1438
    .local v1, "M":I
    add-int/lit8 v4, v1, -0x1

    .end local v12    # "resolve":Landroid/content/pm/ResolveInfo;
    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 1440
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v2, :cond_3

    .line 1441
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1442
    .local v12, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_4

    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1444
    .local v3, "ci":Landroid/content/pm/ComponentInfo;
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1446
    .local v9, "pkgName":Ljava/lang/String;
    aget-object v14, v10, v4

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1447
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1448
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1438
    .end local v3    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v12    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1443
    .restart local v12    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v3    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_4

    .line 1440
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1454
    .end local v3    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v8    # "j":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v12    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->storeSortedResolves(Ljava/util/List;)V

    .line 1411
    .end local v1    # "M":I
    .end local v2    # "N":I
    .end local v4    # "i":I
    .end local v10    # "pkgNamesArrayInDb":[Ljava/lang/String;
    .end local v11    # "pkgNamesInDb":Ljava/lang/String;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    :cond_7
    return-void
.end method


# virtual methods
.method public changePosition(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 1315
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .line 1317
    .local v0, "firstInfo":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    if-ge p1, p2, :cond_0

    .line 1318
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1319
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1321
    .end local v1    # "i":I
    :cond_0
    if-le p1, p2, :cond_1

    .line 1322
    add-int/lit8 v1, p1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-lt v1, p2, :cond_1

    .line 1323
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1322
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1326
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1330
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->storeSortedDispalyResolves(Ljava/util/List;)V

    .line 1314
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1262
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    .line 1263
    add-int/lit8 v0, v0, -0x1

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/internal/app/MzResolverActivity;->-wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIsDetail:Z

    if-eqz v1, :cond_2

    .line 1268
    :cond_1
    :goto_0
    return v0

    .line 1265
    :cond_2
    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 1266
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getFilteredItem()Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    return-object v0

    .line 976
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 981
    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    return v0

    .line 983
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getIsDetail()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIsDetail:Z

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    .line 1273
    add-int/lit8 p1, p1, 0x1

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemDragShadow(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1336
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1279
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1280
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1282
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 1283
    .local v0, "item":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method public getSystemAppIntent()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 1232
    iget-object v7, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .line 1233
    .local v3, "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_1

    .line 1231
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1236
    :cond_1
    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1238
    .local v0, "aCi":Landroid/content/pm/ComponentInfo;
    :goto_2
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1239
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 1240
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 1241
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1237
    .end local v0    # "aCi":Landroid/content/pm/ComponentInfo;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v0    # "aCi":Landroid/content/pm/ComponentInfo;
    goto :goto_2

    .line 1245
    .end local v0    # "aCi":Landroid/content/pm/ComponentInfo;
    .end local v3    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1246
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .line 1247
    .restart local v3    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    new-instance v5, Landroid/content/Intent;

    .line 1248
    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 1247
    :goto_3
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1249
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v7, 0x3000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1251
    iget-object v7, v3, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1252
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    .line 1253
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1252
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1254
    return-object v5

    .line 1248
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_3

    .line 1257
    .end local v3    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    :cond_5
    return-object v9
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 1293
    .local v0, "info":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    const/4 v1, 0x0

    .line 1294
    .local v1, "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    if-nez p2, :cond_2

    .line 1295
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mItemLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1296
    new-instance v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;

    .end local v1    # "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    invoke-direct {v1, p2}, Lcom/android/internal/app/MzResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1297
    .local v1, "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1301
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/internal/app/MzResolverActivity;->-wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIsDetail:Z

    if-eqz v2, :cond_3

    .line 1305
    :cond_0
    iget-object v2, v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1307
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    iget-object v3, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/MzResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1309
    :cond_1
    iget-object v2, v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    :goto_1
    return-object p2

    .line 1299
    .local v1, "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    check-cast v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;

    .local v1, "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    goto :goto_0

    .line 1301
    :cond_3
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 1302
    iget-object v2, v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/MzResolverActivity;->-get0(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v2, v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/MzResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$drawable;->mz_resolver_more:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getCount()I

    move-result v1

    .line 962
    .local v1, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->rebuildList()V

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->notifyDataSetChanged()V

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getCount()I

    move-result v0

    .line 965
    .local v0, "newItemCount":I
    if-nez v0, :cond_0

    .line 967
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 960
    :cond_0
    return-void
.end method

.method public hasFilteredItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 987
    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1288
    const/4 v0, 0x1

    return v0
.end method

.method public intentForPosition(IZ)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1218
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v1

    .line 1220
    .local v1, "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1222
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1224
    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1225
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    .line 1226
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1225
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1227
    return-object v2

    .line 1218
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    .restart local v1    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;
    goto :goto_0

    .line 1221
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->this$0:Lcom/android/internal/app/MzResolverActivity;

    iget-object v4, v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/MzResolverActivity;->getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1214
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    goto :goto_0
.end method

.method public setIsDetail(Z)V
    .locals 0
    .param p1, "detail"    # Z

    .prologue
    .line 991
    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mIsDetail:Z

    .line 990
    return-void
.end method

.method public setItemLayoutId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1536
    iput p1, p0, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mItemLayoutId:I

    .line 1535
    return-void
.end method
