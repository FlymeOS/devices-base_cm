.class Landroid/widget/TimePickerClockDelegate$Node;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TimePickerClockDelegate$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method public varargs constructor <init>(Landroid/widget/TimePickerClockDelegate;[I)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;
    .param p2, "legalKeys"    # [I

    .prologue
    .line 1296
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$Node;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput-object p2, p0, Landroid/widget/TimePickerClockDelegate$Node;->mLegalKeys:[I

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    .line 1296
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/TimePickerClockDelegate$Node;)V
    .locals 1
    .param p1, "child"    # Landroid/widget/TimePickerClockDelegate$Node;

    .prologue
    .line 1302
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    return-void
.end method

.method public canReach(I)Landroid/widget/TimePickerClockDelegate$Node;
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v3, 0x0

    .line 1315
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1316
    return-object v3

    .line 1318
    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePickerClockDelegate$Node;

    .line 1319
    .local v0, "child":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual {v0, p1}, Landroid/widget/TimePickerClockDelegate$Node;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1320
    return-object v0

    .line 1323
    .end local v0    # "child":Landroid/widget/TimePickerClockDelegate$Node;
    :cond_2
    return-object v3
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1307
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1308
    const/4 v1, 0x1

    return v1

    .line 1306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1311
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
