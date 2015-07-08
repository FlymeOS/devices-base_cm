.class Landroid/widget/AutoCompleteTextView$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mDropDownDivider:Landroid/graphics/drawable/Drawable;

.field private mDropDownPaddingEnd:I

.field private mDropDownPaddingStart:I

.field private mDropDownPaddingTop:I

.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 1381
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    .line 1382
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1383
    return-void
.end method


# virtual methods
.method public setPaddingEnd(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1398
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingEnd:I

    .line 1399
    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1394
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingStart:I

    .line 1395
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1402
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingTop:I

    .line 1403
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1388
    .local v0, "buildDropDown":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v3, v3, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {v3, v1}, Landroid/widget/MzPopupWindowHelper;->setMzClippingEnabled(Z)V

    .line 1389
    iget v1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingStart:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingTop:I

    iget v4, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingEnd:I

    invoke-virtual {p0, v1, v3, v4, v2}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->setDropDownListViewPadding(IIII)V

    .line 1390
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1391
    return-void

    .end local v0    # "buildDropDown":Z
    :cond_0
    move v0, v2

    .line 1387
    goto :goto_0
.end method
