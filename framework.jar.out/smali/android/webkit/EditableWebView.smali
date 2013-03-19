.class public Landroid/webkit/EditableWebView;
.super Landroid/webkit/WebView;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$SpellCheckSettingObserver;,
        Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;,
        Landroid/webkit/EditableWebView$SuggestionWindow;,
        Landroid/webkit/EditableWebView$SingleTapQuickActions;,
        Landroid/webkit/EditableWebView$OnScrollChangedListener;,
        Landroid/webkit/EditableWebView$OnOverScrollListener;,
        Landroid/webkit/EditableWebView$OnContentChangedListener;,
        Landroid/webkit/EditableWebView$OnImageSelectedListener;,
        Landroid/webkit/EditableWebView$EditableQuickActions;,
        Landroid/webkit/EditableWebView$ImageInfo;,
        Landroid/webkit/EditableWebView$AnchorTouchListener;,
        Landroid/webkit/EditableWebView$QuickSelectionED;,
        Landroid/webkit/EditableWebView$ShowSipResultReceiver;,
        Landroid/webkit/EditableWebView$SpellCheckItem;
    }
.end annotation


# static fields
.field public static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static DELAY_CURSOR_ANCHOR_DISAPPEAR:I = 0x0

.field static final MAGIC_SEQ:I = 0x1c5ea

.field private static final MSG_CAPTURE:I = 0xa

.field private static final MSG_END_CURSOR_MODE:I = 0x1

.field private static final MSG_HIDE_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x66

.field private static final MSG_PAUSE_SELECT_UI:I = 0x2ebb

.field private static final MSG_RESET_SESSION:I = 0x138a

.field private static final MSG_RESUME_SELECT_UI:I = 0x2ebc

.field private static final MSG_SCHEDULE_NEXT_BATCH_SPELL_CHECK:I = 0x1389

.field private static final MSG_SHOW_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x65

.field private static final MSG_TRIGGER_CONTENT_CHANGED:I = 0x64

.field private static final MSG_UPDATE_SUGGESTION_WINDOW_POSITION:I = 0x138b

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field static final SCHEDULE_NEXT_BATCH_SPELL_CHECK_INTERVAL:I = 0x1f4

.field private static final SELECTION_CONTAIN_MORETHAN_ONEIMAGE:I = 0x0

.field private static final SELECTION_CONTAIN_NO_IMAGE:I = 0x2

.field private static final SELECTION_CONTAIN_ONLY_ONE_IMAGE:I = 0x1

.field static final SPELL_CHECK_BATCH_MAX_SIZE:I = 0x1e


# instance fields
.field private final HIDE_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

.field private final SHOW_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

.field final TOLERANT_DISTANCE:I

.field captureAfterDraw:Z

.field captureMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

.field private isConfigurationChanged:Z

.field isNoteAP:Z

.field isPauseSelectUI:Z

.field longPressOnWebView:Z

.field mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

.field mBatchSpellCheckCompleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/EditableWebView$SpellCheckItem;",
            ">;"
        }
    .end annotation
.end field

.field mBatchSpellCheckMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/webkit/EditableWebView$SpellCheckItem;",
            ">;"
        }
    .end annotation
.end field

.field mBatchSpellCheckPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/EditableWebView$SpellCheckItem;",
            ">;"
        }
    .end annotation
.end field

.field mClipboard:Landroid/content/ClipboardManager;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDisplay:Landroid/view/Display;

.field mDpadKeyPressed:Z

.field private mEditingNode:I

.field private mEditingText:Ljava/lang/String;

.field private mEndIndex:I

.field private mInBatchEditControllers:Z

.field private mInitialized:Z

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mLandscapeDensity:I

.field private mOldScreenOffset:[I

.field private mOldScrollX:I

.field private mOldScrollY:I

.field private mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

.field private mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

.field private mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

.field private mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

.field private mOverScrollThreshold:I

.field private mPenDownRect:Landroid/graphics/Rect;

.field mPenHighlightListener:Landroid/view/View$OnTouchListener;

.field mPenSelectionListener:Landroid/view/View$OnTouchListener;

.field private mPortraitDensity:I

.field private mPreDrawState:I

.field mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private mPrivateHandler:Landroid/os/Handler;

.field private mPrivateImeOptions:Ljava/lang/String;

.field private mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

.field private mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

.field mSCcaret:Landroid/graphics/Rect;

.field mSCindex:Landroid/graphics/Point;

.field mSCnode:I

.field private mScreenOffset:[I

.field private mScrollviewParent:Landroid/widget/ScrollView;

.field private mSelectCallback:Landroid/webkit/WebView$WrapActions;

.field mShowSuggestionWindowAfterSpellCheck:Z

.field private mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

.field private mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field mSpellCheckPengingWord:Ljava/lang/String;

.field private mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

.field private mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellCheckerSessionListener:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

.field private mStartIndex:I

.field private mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

.field mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTappedURL:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

.field private mTurnOnSpellCheckIfAvalible:Z

.field mUpdateTimestamp:J

.field private mVSbound:Landroid/graphics/Rect;

.field private mVStype:I

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private m_bEnableEditable:Z

.field m_bRemoveSelectRangeDuringUpdateContent:Z

.field private predrawForSIPShown:Z

.field tolerantBox:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableWebView;->DEBUG:Z

    .line 102
    const/16 v0, 0xbb8

    sput v0, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/EditableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 214
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 105
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    .line 106
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 107
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    .line 111
    iput v2, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView;->mStartIndex:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView;->mEndIndex:I

    .line 114
    iput v2, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    .line 115
    iput v2, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    .line 116
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    .line 117
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    .line 118
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    .line 119
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    .line 124
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    .line 128
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    .line 129
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    .line 133
    iput v2, p0, Landroid/webkit/EditableWebView;->mVStype:I

    .line 138
    iput v2, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 146
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    .line 149
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    .line 150
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    .line 151
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    .line 153
    new-instance v0, Landroid/webkit/EditableWebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$1;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 166
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/webkit/EditableWebView;->HIDE_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

    .line 167
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/webkit/EditableWebView;->SHOW_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

    .line 174
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mTurnOnSpellCheckIfAvalible:Z

    .line 179
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckPengingWord:Ljava/lang/String;

    .line 181
    iput v2, p0, Landroid/webkit/EditableWebView;->mSCnode:I

    .line 182
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSCindex:Landroid/graphics/Point;

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSCcaret:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckCompleteList:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckMap:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSuggestions:Ljava/util/ArrayList;

    .line 339
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    .line 635
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 845
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    .line 924
    new-instance v0, Landroid/webkit/EditableWebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$2;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    .line 1189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    .line 1190
    new-instance v0, Landroid/webkit/EditableWebView$AnchorTouchListener;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$AnchorTouchListener;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

    .line 1418
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/EditableWebView;->TOLERANT_DISTANCE:I

    .line 1419
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    .line 3127
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    .line 3149
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    .line 3150
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 3151
    iput v2, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    .line 3434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    .line 3474
    new-instance v0, Landroid/webkit/EditableWebView$3;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$3;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    .line 3544
    new-instance v0, Landroid/webkit/EditableWebView$4;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$4;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    .line 3615
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    .line 215
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 217
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->setEditable(Z)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V

    .line 221
    new-instance v0, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v0}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    .line 228
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->myInitQuickAction()V

    .line 230
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    .line 231
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 232
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 233
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->initSingleTapQuickAction()V

    .line 235
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mDisplay:Landroid/view/Display;

    .line 238
    const-string v0, "editablewebview.spellcheck"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->enableSpellCheckIfAvalible(Z)V

    .line 252
    return-void

    .line 118
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Landroid/webkit/EditableWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/EditableWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/EditableWebView;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Landroid/webkit/EditableWebView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/EditableWebView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    return-object v0
.end method

.method static synthetic access$1800(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2100(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2300(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2500(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2600(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Landroid/webkit/EditableWebView;ILandroid/graphics/PointF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/webkit/EditableWebView;->horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mEndIndex:I

    return v0
.end method

.method static synthetic access$3100(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    return v0
.end method

.method static synthetic access$3200(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$3300(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/webkit/EditableWebView;[Ljava/lang/String;[ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/EditableWebView;->getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/webkit/EditableWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/webkit/EditableWebView;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$400(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->resetSessionImpl()V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4400(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/webkit/EditableWebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->updateSuggestionWindowPosition()V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$6600(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7100(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkCursorVisible()Z
    .locals 10

    .prologue
    const/16 v9, 0x32

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 590
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    if-eqz v7, :cond_7

    .line 591
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    .line 595
    .local v4, scrollableView:Landroid/view/View;
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 596
    .local v5, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 597
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    invoke-virtual {p0, v7}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, changed:Z
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v7, v7, v6

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v8, v8, v0

    neg-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 600
    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    iget v8, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 602
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 603
    const/4 v2, 0x0

    .local v2, dx:I
    const/4 v3, 0x0

    .line 604
    .local v3, dy:I
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_8

    .line 605
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    add-int v2, v7, v8

    .line 608
    :cond_0
    :goto_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_1

    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_9

    .line 609
    :cond_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    add-int v3, v7, v8

    .line 612
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_6

    .line 613
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v9, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v9, :cond_a

    .line 614
    .local v0, animation:Z
    :cond_4
    :goto_3
    if-ne v4, p0, :cond_b

    .line 615
    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    add-int/2addr v7, v2

    iget v8, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v7, v8, v0, v6}, Landroid/webkit/EditableWebView;->myScrollTo(IIZI)V

    .line 617
    sget-boolean v6, Landroid/webkit/EditableWebView;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 618
    const-string v6, "EditableWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EditableWebView::checkCursorVisible]\n dx ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dy ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScrollX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScrollY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n visibleRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", W="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", H="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 632
    .end local v0           #animation:Z
    .end local v2           #dx:I
    .end local v3           #dy:I
    :cond_6
    return v1

    .line 593
    .end local v1           #changed:Z
    .end local v4           #scrollableView:Landroid/view/View;
    .end local v5           #visibleRect:Landroid/graphics/Rect;
    :cond_7
    move-object v4, p0

    .restart local v4       #scrollableView:Landroid/view/View;
    goto/16 :goto_0

    .line 606
    .restart local v1       #changed:Z
    .restart local v2       #dx:I
    .restart local v3       #dy:I
    .restart local v5       #visibleRect:Landroid/graphics/Rect;
    :cond_8
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_0

    .line 607
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    sub-int v2, v7, v8

    goto/16 :goto_1

    .line 610
    :cond_9
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_2

    .line 611
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    sub-int v3, v7, v8

    goto/16 :goto_2

    :cond_a
    move v0, v6

    .line 613
    goto/16 :goto_3

    .line 625
    .restart local v0       #animation:Z
    :cond_b
    if-eqz v3, :cond_c

    .line 626
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    invoke-virtual {v7, v6, v3}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 627
    :cond_c
    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    add-int/2addr v7, v2

    invoke-virtual {p0, v7, v6, v0, v6}, Landroid/webkit/EditableWebView;->myScrollTo(IIZI)V

    goto :goto_4
.end method

.method private closeSession()V
    .locals 1

    .prologue
    .line 4024
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    .line 4025
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 4027
    :cond_0
    return-void
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 3193
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I
    .locals 12
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1768
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v5}, Landroid/webkit/HTCWebCore;->nativeGetImageAttr()Ljava/util/ArrayList;

    move-result-object v3

    .line 1770
    .local v3, stringarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-nez v3, :cond_0

    move v5, v6

    .line 1799
    :goto_0
    return v5

    .line 1773
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, p1, v7

    .line 1774
    aget-object v5, p1, v7

    const-string v9, "SELECTION_CONTAIN_MORETHAN_ONEIMAGE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 1775
    goto :goto_0

    .line 1777
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v7

    .line 1779
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1780
    .local v1, left:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1781
    .local v4, top:I
    const/4 v2, 0x0

    .line 1783
    .local v2, right:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    if-nez v5, :cond_2

    .line 1784
    add-int/lit8 v2, v1, 0x0

    .line 1788
    :goto_1
    const/4 v0, 0x0

    .line 1789
    .local v0, bottom:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    if-nez v5, :cond_3

    .line 1790
    add-int/lit8 v0, v4, 0x0

    .line 1795
    :goto_2
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v6

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v7

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v9

    invoke-virtual {p3, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1797
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    move v5, v8

    .line 1799
    goto :goto_0

    .line 1786
    .end local v0           #bottom:I
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v2, v1, v5

    goto :goto_1

    .line 1792
    .restart local v0       #bottom:I
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_2
.end method

.method private getTextServicesLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 3995
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v1, :cond_0

    .line 3996
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 3997
    .local v0, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v0, :cond_0

    .line 3998
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 4001
    .end local v0           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method private horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V
    .locals 7
    .parameter "rawX"
    .parameter "offset"

    .prologue
    const/high16 v6, 0x3f00

    .line 1457
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1458
    .local v2, outSize:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1459
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1460
    .local v3, screenWidth:I
    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    shr-int/lit8 v1, v4, 0x1

    .line 1461
    .local v1, maxOffset:I
    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    int-to-float v4, v4

    const v5, 0x3fa66666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 1462
    .local v0, adjustRange:I
    if-ge p1, v0, :cond_1

    iget v4, p2, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v5, v0, 0x1

    sub-int v5, v1, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1463
    sub-int v4, p1, v0

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p2, Landroid/graphics/PointF;->x:F

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    sub-int v4, v3, p1

    if-ge v4, v0, :cond_0

    iget v4, p2, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1465
    sub-int v4, v0, v3

    add-int/2addr v4, p1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 3876
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3893
    :cond_0
    :goto_0
    return-void

    .line 3877
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3878
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3879
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3880
    const-string v4, "com.android.browser.application_id"

    iget-object v5, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3881
    const-string v4, "geo:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "mailto:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "rtsp://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 3886
    .local v1, isDispatcherWanted:Z
    :goto_1
    const-string/jumbo v4, "ro.da1.enable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3887
    .local v2, isNoContextMenu:Z
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 3888
    const-string v3, "com.htc.HtcLinkifyDispatcher"

    const-string v4, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3891
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3892
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #isDispatcherWanted:Z
    .end local v2           #isNoContextMenu:Z
    :cond_4
    move v1, v3

    .line 3881
    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 573
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 574
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-nez v1, :cond_2

    .line 579
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 580
    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    goto :goto_0

    .line 581
    :cond_2
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 582
    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    goto :goto_0
.end method

.method private resetSessionImpl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x230

    const/4 v3, 0x0

    .line 4012
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->closeSession()V

    .line 4014
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->mTurnOnSpellCheckIfAvalible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSessionListener:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 4017
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 4022
    :goto_0
    return-void

    .line 4019
    :cond_0
    iput-object v5, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 4020
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 4004
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mCurrentLocale:Ljava/util/Locale;

    .line 4005
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->resetSession()V

    .line 4006
    return-void
.end method

.method private showSuggestionWindow(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4065
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    if-nez v6, :cond_0

    .line 4066
    new-instance v6, Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-direct {v6, p0}, Landroid/webkit/EditableWebView$SuggestionWindow;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    .line 4068
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4069
    .local v1, markerRange:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 4070
    invoke-direct {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4071
    .local v0, adjustedRegion:Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 4072
    .local v2, offsetInWindow:[I
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getLocationInWindow([I)V

    .line 4073
    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 4074
    iget v6, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    neg-int v6, v6

    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    neg-int v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 4076
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6, p1}, Landroid/webkit/EditableWebView$SuggestionWindow;->updateSuggestions(Ljava/util/ArrayList;)V

    .line 4077
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->updateDimension()V

    .line 4079
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 4080
    .local v3, outSize:Landroid/graphics/Point;
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4082
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->getWidth()I

    move-result v5

    .line 4083
    .local v5, suggestionWindowWidth:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->getHeight()I

    move-result v4

    .line 4085
    .local v4, suggestionWindowHeight:I
    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_3

    .line 4086
    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4087
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    if-ltz v6, :cond_1

    .line 4088
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 4099
    :goto_0
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/EditableWebView$SuggestionWindow;->updatePosition(II)V

    .line 4100
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->show()V

    .line 4101
    return-void

    .line 4089
    :cond_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-gt v6, v7, :cond_2

    .line 4090
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 4092
    :cond_2
    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 4094
    :cond_3
    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private spacialDeNoise(FF)Landroid/graphics/PointF;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4120

    .line 1421
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1422
    .local v4, p:Landroid/graphics/PointF;
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 1423
    .local v2, oldCenterX:F
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 1424
    .local v3, oldCenterY:F
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1425
    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 1426
    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 1452
    :goto_0
    return-object v4

    .line 1429
    :cond_0
    const/4 v0, 0x0

    .line 1430
    .local v0, offsetX:F
    const/4 v1, 0x0

    .line 1431
    .local v1, offsetY:F
    sub-float v5, p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 1432
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    .line 1433
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v5

    .line 1439
    :cond_1
    :goto_1
    sub-float v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 1440
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    .line 1441
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v5

    .line 1448
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1449
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 1450
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1434
    :cond_3
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 1435
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v5

    goto :goto_1

    .line 1438
    :cond_4
    sub-float v0, p1, v2

    goto :goto_1

    .line 1442
    :cond_5
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    .line 1443
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v5

    goto :goto_2

    .line 1446
    :cond_6
    sub-float v1, p2, v3

    goto :goto_2
.end method

.method private updateSuggestionWindowPosition()V
    .locals 9

    .prologue
    .line 4032
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4033
    .local v1, markerRange:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 4034
    invoke-direct {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4035
    .local v0, adjustedRegion:Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 4036
    .local v2, offsetInWindow:[I
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getLocationInWindow([I)V

    .line 4037
    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 4038
    iget v6, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    neg-int v6, v6

    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    neg-int v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 4043
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 4044
    .local v3, outSize:Landroid/graphics/Point;
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4046
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->getWidth()I

    move-result v5

    .line 4047
    .local v5, suggestionWindowWidth:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->getHeight()I

    move-result v4

    .line 4049
    .local v4, suggestionWindowHeight:I
    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_2

    .line 4050
    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4051
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    if-ltz v6, :cond_0

    .line 4052
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 4060
    :goto_0
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/EditableWebView$SuggestionWindow;->updatePosition(II)V

    .line 4061
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    invoke-virtual {v6}, Landroid/webkit/EditableWebView$SuggestionWindow;->show()V

    .line 4062
    return-void

    .line 4053
    :cond_0
    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-gt v6, v7, :cond_1

    .line 4054
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 4056
    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 4058
    :cond_2
    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 11
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1724
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v5}, Landroid/webkit/HTCWebCore;->nativeGetImageAttr()Ljava/util/ArrayList;

    move-result-object v3

    .line 1726
    .local v3, stringarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-nez v3, :cond_0

    move v5, v6

    .line 1753
    :goto_0
    return v5

    .line 1729
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, p1, v6

    .line 1731
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v6

    .line 1733
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1734
    .local v1, left:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1735
    .local v4, top:I
    const/4 v2, 0x0

    .line 1737
    .local v2, right:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    if-nez v5, :cond_1

    .line 1738
    add-int/lit8 v2, v1, 0x0

    .line 1742
    :goto_1
    const/4 v0, 0x0

    .line 1743
    .local v0, bottom:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    if-nez v5, :cond_2

    .line 1744
    add-int/lit8 v0, v4, 0x0

    .line 1749
    :goto_2
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v6

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v8

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v9

    invoke-virtual {p3, v5, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1751
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    move v5, v7

    .line 1753
    goto :goto_0

    .line 1740
    .end local v0           #bottom:I
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v2, v1, v5

    goto :goto_1

    .line 1746
    .restart local v0       #bottom:I
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_2
.end method

.method public SetBackColor(IZ)V
    .locals 7
    .parameter "color"
    .parameter "enableBackColor"

    .prologue
    const/16 v5, 0xff

    .line 1880
    const/4 v0, 0x0

    .line 1881
    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1882
    .local v4, nR:I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 1883
    :cond_0
    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    .line 1885
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1886
    .local v3, nG:I
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 1887
    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    .line 1889
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 1890
    .local v2, nB:I
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 1891
    :cond_4
    if-le v2, v5, :cond_5

    const/16 v2, 0xff

    .line 1893
    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 1894
    .local v1, nA:I
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 1895
    :cond_6
    if-le v1, v5, :cond_7

    const/16 v1, 0xff

    .line 1897
    :cond_7
    if-nez p2, :cond_8

    .line 1898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1901
    :goto_0
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x208

    invoke-virtual {v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1902
    return-void

    .line 1900
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SetFontSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x209

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 1961
    return-void
.end method

.method public SetForeColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/16 v4, 0xff

    .line 1835
    const/4 v0, 0x0

    .line 1836
    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 1837
    .local v3, nR:I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 1838
    :cond_0
    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    .line 1840
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1841
    .local v2, nG:I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 1842
    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    .line 1844
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1845
    .local v1, nB:I
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 1846
    :cond_4
    if-le v1, v4, :cond_5

    const/16 v1, 0xff

    .line 1848
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rgb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1849
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x207

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1850
    return-void
.end method

.method public SetImageAttr(III)V
    .locals 4
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1807
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScale()F

    move-result v0

    .line 1808
    .local v0, fCurrentScale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1809
    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 1810
    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 1813
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 1814
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 3819
    invoke-super {p0, p1}, Landroid/webkit/WebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 3820
    return-void
.end method

.method public alignCenter()V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x203

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1669
    return-void
.end method

.method public alignJustified()V
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1674
    return-void
.end method

.method public alignLeft()V
    .locals 2

    .prologue
    .line 1678
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1679
    return-void
.end method

.method public alignRight()V
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1684
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    .line 312
    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 2

    .prologue
    .line 1710
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1711
    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1
    .parameter "distance"

    .prologue
    .line 3427
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    if-le p1, v0, :cond_0

    .line 3428
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/webkit/EditableWebView$OnOverScrollListener;->onOverScrolled(Landroid/webkit/WebView;I)V

    .line 3429
    const/4 v0, 0x0

    .line 3431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1514
    const/4 v0, 0x0

    .line 1516
    :goto_0
    return v0

    .line 1515
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->insetText(ILjava/lang/String;)V

    .line 1516
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21c

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1688
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1692
    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 6
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1538
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebViewCore;->deleteSurroundingText(IIIII)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    .line 260
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 261
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 263
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 270
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->mTurnOnSpellCheckIfAvalible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 273
    :cond_3
    return-void
.end method

.method doBatchSpellCheck([Ljava/lang/String;[I[I[I)V
    .locals 10
    .parameter "words"
    .parameter "nodes"
    .parameter "startIndexs"
    .parameter "endIndexs"

    .prologue
    const/16 v9, 0x1389

    .line 3965
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3967
    array-length v7, p1

    .line 3968
    .local v7, size:I
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3969
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckCompleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3970
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3972
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 3973
    iget-object v8, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    new-instance v0, Landroid/webkit/EditableWebView$SpellCheckItem;

    aget-object v2, p1, v6

    aget v3, p2, v6

    aget v4, p3, v6

    aget v5, p4, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/EditableWebView$SpellCheckItem;-><init>(Landroid/webkit/EditableWebView;Ljava/lang/String;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3972
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3975
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3976
    return-void
.end method

.method doSpellCheck(Ljava/lang/String;IIIZ)V
    .locals 8
    .parameter "word"
    .parameter "node"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "showSuggestionWindow"

    .prologue
    const/4 v7, 0x0

    .line 3923
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    .line 3924
    .local v1, locale:Ljava/util/Locale;
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/EditableWebView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3925
    :cond_0
    invoke-direct {p0, v1}, Landroid/webkit/EditableWebView;->setLocale(Ljava/util/Locale;)V

    .line 3933
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3946
    :goto_1
    return-void

    .line 3927
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v2

    .line 3928
    .local v2, spellCheckerActivated:Z
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v4

    if-eq v4, v2, :cond_1

    .line 3929
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->resetSession()V

    goto :goto_0

    .line 3935
    .end local v2           #spellCheckerActivated:Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    .line 3936
    .local v0, cookie:I
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mSpellCheckPengingWord:Ljava/lang/String;

    .line 3937
    iput-boolean p5, p0, Landroid/webkit/EditableWebView;->mShowSuggestionWindowAfterSpellCheck:Z

    .line 3938
    iput p2, p0, Landroid/webkit/EditableWebView;->mSCnode:I

    .line 3939
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSCindex:Landroid/graphics/Point;

    invoke-virtual {v4, p3, p4}, Landroid/graphics/Point;->set(II)V

    .line 3941
    const-string v4, "KENLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSpellCheck | word: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/view/textservice/TextInfo;

    .line 3944
    .local v3, textInfos:[Landroid/view/textservice/TextInfo;
    new-instance v4, Landroid/view/textservice/TextInfo;

    const v5, 0x1c5ea

    invoke-direct {v4, p1, v0, v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v4, v3, v7

    .line 3945
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5, v7}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    goto :goto_1
.end method

.method public enableMultiTouch()V
    .locals 0

    .prologue
    .line 3831
    invoke-super {p0}, Landroid/webkit/WebView;->enableMultiTouch()V

    .line 3832
    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 6
    .parameter "portraitScale"
    .parameter "landscapeScale"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x3f00

    .line 870
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 872
    .local v0, config:Landroid/content/res/Configuration;
    div-float v2, v5, p1

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 873
    .local v1, density:I
    iget v2, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    if-eq v2, v1, :cond_0

    .line 874
    iput v1, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    .line 875
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 876
    iget v2, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    .line 878
    :cond_0
    div-float v2, v5, p2

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 879
    iget v2, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    if-eq v2, v1, :cond_1

    .line 880
    iput v1, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    .line 881
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 882
    iget v2, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    .line 884
    :cond_1
    return-void
.end method

.method protected enableQuickSelection(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1036
    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableQuickSelection(Z)V

    .line 1037
    return-void
.end method

.method public enableSpellCheckIfAvalible(Z)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 3897
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->mTurnOnSpellCheckIfAvalible:Z

    if-ne v0, p1, :cond_0

    .line 3919
    :goto_0
    return-void

    .line 3899
    :cond_0
    if-eqz p1, :cond_3

    .line 3900
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-nez v0, :cond_1

    .line 3901
    new-instance v0, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSessionListener:Landroid/webkit/EditableWebView$HtcSpellCheckerSessionListener;

    .line 3902
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 3904
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->setLocale(Ljava/util/Locale;)V

    .line 3905
    new-instance v0, Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$SpellCheckSettingObserver;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    .line 3908
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/secure/spell_checker_enabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3917
    :cond_2
    :goto_1
    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->mTurnOnSpellCheckIfAvalible:Z

    .line 3918
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->resetSession()V

    goto :goto_0

    .line 3913
    :cond_3
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    if-eqz v0, :cond_2

    .line 3914
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSpellCheckSettingObserver:Landroid/webkit/EditableWebView$SpellCheckSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    .line 316
    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/EditableWebView;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    .line 1556
    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 1559
    if-nez p2, :cond_0

    .line 1560
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1565
    :goto_0
    return-void

    .line 1562
    :cond_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1563
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fd

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 2
    .parameter "bottom"
    .parameter "callback"

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 1585
    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3631
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetAllAnchorSpan()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 2
    .parameter "id"

    .prologue
    .line 1594
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1595
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetAnchorRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    .line 1596
    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3
    .parameter "id"

    .prologue
    .line 3608
    if-eqz p1, :cond_0

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3610
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3611
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    .line 3612
    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "id"

    .prologue
    .line 3603
    if-eqz p2, :cond_0

    const-string v0, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3605
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    .line 3606
    return-void
.end method

.method public getBackColor()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 1905
    iget-object v8, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v8}, Landroid/webkit/HTCWebCore;->nativeGetBackColor()Ljava/lang/String;

    move-result-object v6

    .line 1907
    .local v6, strRGBA:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 1949
    :cond_1
    :goto_0
    return v7

    .line 1909
    :cond_2
    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1910
    const/4 v1, 0x5

    .local v1, start:I
    const/4 v0, 0x0

    .line 1911
    .local v0, end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1912
    if-eq v0, v9, :cond_1

    .line 1913
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1915
    .local v5, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1916
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1917
    if-eq v0, v9, :cond_1

    .line 1918
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1920
    .local v4, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1921
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1922
    if-eq v0, v9, :cond_1

    .line 1923
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1925
    .local v3, strB:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1926
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1927
    if-eq v0, v9, :cond_1

    .line 1928
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1930
    .local v2, strA:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0

    .line 1931
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v2           #strA:Ljava/lang/String;
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1932
    const/4 v1, 0x4

    .restart local v1       #start:I
    const/4 v0, 0x0

    .line 1933
    .restart local v0       #end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1934
    if-eq v0, v9, :cond_1

    .line 1935
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1937
    .restart local v5       #strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1938
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1939
    if-eq v0, v9, :cond_1

    .line 1940
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1942
    .restart local v4       #strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1943
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1944
    if-eq v0, v9, :cond_1

    .line 1945
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1947
    .restart local v3       #strB:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto/16 :goto_0

    .line 1949
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_4
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto/16 :goto_0
.end method

.method public getBoldState()I
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetBoldState()I

    move-result v0

    return v0
.end method

.method public final getCaretRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 3256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3258
    .local v0, ret:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .end local v0           #ret:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .restart local v0       #ret:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #ret:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 3847
    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    .line 1955
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getBackColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetFontSize()I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 1854
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v7}, Landroid/webkit/HTCWebCore;->nativeGetForeColor()Ljava/lang/String;

    move-result-object v5

    .line 1856
    .local v5, strRGB:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string/jumbo v7, "rgb("

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 1873
    :cond_1
    :goto_0
    return v6

    .line 1858
    :cond_2
    const/4 v1, 0x4

    .local v1, start:I
    const/4 v0, 0x0

    .line 1859
    .local v0, end:I
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1860
    if-eq v0, v8, :cond_1

    .line 1861
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1863
    .local v4, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1864
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1865
    if-eq v0, v8, :cond_1

    .line 1866
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1868
    .local v3, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1869
    const-string v7, ")"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1870
    if-eq v0, v8, :cond_1

    .line 1871
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1873
    .local v2, strB:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1551
    return-void
.end method

.method public final getHighlightRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 3268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3270
    .local v0, ret:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .end local v0           #ret:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .restart local v0       #ret:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #ret:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "pointer"

    .prologue
    .line 1823
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, p1}, Landroid/webkit/HTCWebCore;->nativegetImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1825
    .local v0, rectImage:Landroid/graphics/Rect;
    sget-boolean v1, Landroid/webkit/EditableWebView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1826
    const-string v1, "EditableWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EditableWebView::getImageNodeRect] >> rectImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_0
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1830
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1831
    return-object v0
.end method

.method public getItalicState()I
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetItalicState()I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    if-nez v1, :cond_0

    .line 321
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 322
    .local v0, cap:Landroid/text/method/TextKeyListener$Capitalize;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    .line 324
    .end local v0           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    return-object v1
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 3541
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 3438
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"

    .prologue
    .line 3323
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    .line 3327
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"
    .parameter "bgColor"

    .prologue
    .line 3333
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20c

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3334
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 3336
    if-nez p5, :cond_0

    .line 3337
    invoke-virtual {p0, p1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p1

    .line 3338
    invoke-virtual {p0, p2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result p2

    .line 3339
    invoke-virtual {p0, p3}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p3

    .line 3340
    invoke-virtual {p0, p4}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p4

    .line 3343
    :cond_0
    sget-boolean v7, Landroid/webkit/EditableWebView;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 3344
    const-string v7, "EditableWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EditableWebView::getRegionCapture] >> l="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3349
    .local v2, clip:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3350
    const/4 v6, 0x0

    .line 3384
    :cond_2
    :goto_0
    return-object v6

    .line 3352
    :cond_3
    const/4 v5, 0x0

    .line 3353
    .local v5, needAlocate:Z
    move-object/from16 v6, p6

    .line 3355
    .local v6, ret:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3356
    :cond_4
    const/4 v5, 0x1

    .line 3357
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3360
    :cond_5
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 3361
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3363
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3365
    neg-int v7, p1

    int-to-float v7, v7

    neg-int v8, p2

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3368
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v3, v7, Landroid/util/DisplayMetrics;->density:F

    .line 3369
    .local v3, defaulScale:F
    const/high16 v7, 0x3f80

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_6

    .line 3370
    int-to-float v7, p1

    int-to-float v8, p2

    invoke-virtual {v1, v3, v3, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3372
    :cond_6
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->drawPage(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    if-nez v5, :cond_7

    .line 3375
    const/4 v6, 0x0

    .line 3382
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v3           #defaulScale:F
    :cond_7
    :goto_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20c

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3384
    if-nez v5, :cond_2

    move-object/from16 v6, p6

    goto :goto_0

    .line 3377
    :catch_0
    move-exception v4

    .line 3378
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "EditableWebView"

    const-string v8, ""

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3379
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"

    .prologue
    .line 3309
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    .line 3299
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 3282
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 3288
    :cond_0
    :goto_0
    return-void

    .line 3285
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    .line 3287
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->invalidate()V

    goto :goto_0
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$ShowSipResultReceiver;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    .line 866
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    return-object v0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    .line 3408
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetStrikethroughState()I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetUnderlineState()I

    move-result v0

    return v0
.end method

.method getVSbound(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "ref"

    .prologue
    .line 1057
    if-eqz p1, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1059
    :cond_0
    iget v0, p0, Landroid/webkit/EditableWebView;->mVStype:I

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 3815
    invoke-super {p0}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 2

    .prologue
    .line 3802
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v0, :cond_1

    .line 3810
    :cond_0
    :goto_0
    return-void

    .line 3804
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3806
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3808
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3809
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction()V

    goto :goto_0
.end method

.method protected initQuickSelect()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Landroid/webkit/EditableWebView$QuickSelectionED;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/EditableWebView$QuickSelectionED;-><init>(Landroid/webkit/EditableWebView;Landroid/webkit/EditableWebView$1;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    .line 1072
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView$QuickSelectionED;->init()V

    .line 1077
    :cond_1
    return-void
.end method

.method protected initSingleTapQuickAction()V
    .locals 3

    .prologue
    .line 3652
    new-instance v0, Landroid/webkit/EditableWebView$SingleTapQuickActions;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$SingleTapQuickActions;-><init>(Landroid/webkit/EditableWebView;)V

    .line 3653
    .local v0, actions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView$SingleTapQuickActions;->loadResource(Landroid/content/Context;)V

    .line 3654
    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    .line 3655
    new-instance v1, Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    .line 3656
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    .line 3657
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 3658
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 1706
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1707
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x222

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1708
    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1573
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1574
    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fb

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1569
    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 1713
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->updateContentFromMessage(I)V

    .line 1715
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "htmlString"

    .prologue
    .line 1578
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1579
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1580
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x220

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1581
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1608
    new-instance v0, Landroid/webkit/EditableWebView$ImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkit/EditableWebView$ImageInfo;-><init>(Landroid/webkit/EditableWebView;Ljava/lang/String;II)V

    .line 1609
    .local v0, imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x1fe

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1610
    return-void
.end method

.method isSessionActive()Z
    .locals 1

    .prologue
    .line 4029
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected myInitQuickAction()V
    .locals 3

    .prologue
    .line 3086
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions;-><init>(Landroid/webkit/EditableWebView;)V

    .line 3088
    .local v0, actions:Landroid/webkit/EditableWebView$EditableQuickActions;
    iput-object v0, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    .line 3091
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3092
    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    .line 3093
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 383
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 384
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 385
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 386
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    .line 391
    :cond_0
    return-void

    .line 389
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 329
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 889
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 891
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 892
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v0, v0, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 895
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 896
    iget v0, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    .line 900
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    .line 901
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v1, :cond_1

    .line 902
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->pauseSelectionUI()V

    .line 904
    :cond_1
    return-void

    .line 898
    :cond_2
    iget v0, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 295
    new-instance v0, Landroid/webkit/WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewInputConnection;-><init>(Landroid/webkit/EditableWebView;)V

    .line 296
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 297
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 298
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 299
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 300
    const/16 v1, 0x4000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 301
    const v1, 0x24001

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 304
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 305
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 307
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 398
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 400
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 402
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 405
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    .line 406
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 456
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 458
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    .line 461
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 462
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    if-nez v1, :cond_2

    .line 463
    iget v1, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    if-ne v1, v10, :cond_0

    iget v1, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    if-ne v1, v10, :cond_0

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    aget v1, v1, v11

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    if-ne v1, v10, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    aget v1, v1, v12

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    if-eq v1, v10, :cond_2

    .line 466
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v10, :cond_6

    .line 467
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 468
    .local v9, prior:Landroid/graphics/Rect;
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 469
    .local v8, post:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1, v9, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 477
    .end local v8           #post:Landroid/graphics/Rect;
    .end local v9           #prior:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    iput-boolean v11, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    .line 478
    iget v1, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    iput v1, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    .line 479
    iget v1, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    iput v1, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    .line 480
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    aput v10, v1, v11

    .line 481
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    aput v10, v1, v12

    .line 483
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    if-nez v1, :cond_2

    .line 485
    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    sub-int v2, v1, v10

    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    sub-int v3, v1, v10

    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    sub-int v4, v1, v10

    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    sub-int v5, v1, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 493
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    if-nez v1, :cond_3

    .line 494
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 495
    .local v2, selStart:I
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 496
    .local v3, selEnd:I
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 497
    .local v4, candStart:I
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    .line 498
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 500
    .end local v2           #selStart:I
    .end local v3           #selEnd:I
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    :cond_3
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    const/4 v10, 0x2

    if-ne v1, v10, :cond_4

    .line 501
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 502
    .local v7, observer:Landroid/view/ViewTreeObserver;
    if-eqz v7, :cond_4

    .line 503
    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 504
    iput v11, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 508
    .end local v7           #observer:Landroid/view/ViewTreeObserver;
    :cond_4
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    if-eqz v1, :cond_5

    .line 509
    iput-boolean v11, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    .line 510
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v11, 0xa

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 513
    :cond_5
    return-void

    .line 471
    :cond_6
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v10, :cond_1

    .line 472
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 473
    .local v6, cursor:Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 474
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v6}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public onEditorAction(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 333
    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    .line 1469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 1470
    return-void
.end method

.method public onEndSelect(Z)V
    .locals 8
    .parameter "removeSelection"

    .prologue
    const/4 v7, 0x0

    .line 1473
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    .line 1474
    .local v1, mode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 1475
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v4}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    .line 1477
    iget-object v4, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    if-eqz v4, :cond_0

    .line 1478
    iget-object v4, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    iput-boolean v7, v4, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 1481
    :cond_0
    if-eqz p1, :cond_1

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1483
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1484
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v3

    .line 1485
    .local v3, type:I
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1486
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1487
    .local v0, end:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 1491
    .end local v0           #end:Landroid/graphics/Rect;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #type:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v4, :cond_2

    .line 1492
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v4}, Landroid/webkit/WebView$WrapActions;->finish()V

    .line 1494
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x20c

    const/4 v2, 0x1

    .line 520
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isWebCoreReady()Z

    move-result v7

    .line 521
    .local v7, bReady:Z
    if-eqz v7, :cond_0

    .line 522
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 526
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 528
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v0, v5, :cond_1

    .line 532
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 534
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x8e

    invoke-virtual {v0, v5, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 537
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 539
    if-eqz p1, :cond_3

    if-eqz v7, :cond_3

    .line 540
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const-wide/16 v5, 0xfa

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 541
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, -0x1

    .line 343
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x14

    if-eq p1, v6, :cond_0

    const/16 v6, 0x13

    if-eq p1, v6, :cond_0

    const/16 v6, 0x15

    if-eq p1, v6, :cond_0

    const/16 v6, 0x16

    if-ne p1, v6, :cond_1

    .line 346
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    .line 348
    :cond_1
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_3

    .line 349
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    .line 350
    .local v5, unicode:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    .line 351
    .local v3, oldLength:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 352
    if-eqz v5, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 353
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v6}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 354
    .local v0, a:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v6}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 355
    .local v1, b:I
    if-ge v1, v0, :cond_2

    .line 356
    move v4, v0

    .line 357
    .local v4, tmp:I
    move v0, v1

    .line 358
    move v1, v4

    .line 360
    .end local v4           #tmp:I
    :cond_2
    if-eq v0, v8, :cond_3

    if-eq v1, v8, :cond_3

    .line 361
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 362
    .local v2, composingText:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    .line 366
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #composingText:Ljava/lang/CharSequence;
    .end local v3           #oldLength:I
    .end local v5           #unicode:I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    return v6
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3444
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 3445
    .local v0, filteredMetaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3446
    sparse-switch p1, :sswitch_data_0

    .line 3470
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 3471
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3451
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->cut()V

    goto :goto_0

    .line 3454
    :sswitch_1
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->copy()V

    goto :goto_0

    .line 3457
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 3460
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignLeft()V

    goto :goto_0

    .line 3463
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignCenter()V

    goto :goto_0

    .line 3466
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignRight()V

    goto :goto_0

    .line 3446
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_3
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x2f -> :sswitch_4
        0x32 -> :sswitch_2
        0x34 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 373
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 9

    .prologue
    const/16 v8, 0x138b

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 410
    iget v5, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-eq v5, v3, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v3

    .line 414
    :cond_1
    const/4 v0, 0x0

    .line 415
    .local v0, changed:Z
    iget-boolean v5, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    if-eqz v5, :cond_2

    .line 417
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 418
    .local v2, windowRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 420
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 421
    .local v1, outSize:Landroid/graphics/Point;
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 423
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_0

    .line 428
    .end local v1           #outSize:Landroid/graphics/Point;
    .end local v2           #windowRect:Landroid/graphics/Rect;
    :cond_2
    iput-boolean v4, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    .line 429
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v5}, Landroid/webkit/WebView$AutoScrollerWrapper;->isScrolling()Z

    move-result v5

    if-nez v5, :cond_3

    .line 430
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->checkCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 431
    const/4 v0, 0x1

    .line 433
    :cond_3
    const/4 v5, 0x2

    iput v5, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 436
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/webkit/EditableWebView;->mSuggestionWindow:Landroid/webkit/EditableWebView$SuggestionWindow;

    iget-object v5, v5, Landroid/webkit/EditableWebView$SuggestionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 438
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 439
    .restart local v2       #windowRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 441
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 442
    .restart local v1       #outSize:Landroid/graphics/Point;
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 444
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_4

    .line 445
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 450
    .end local v1           #outSize:Landroid/graphics/Point;
    .end local v2           #windowRect:Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1508
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 3626
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 3627
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 3628
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/EditableWebView$OnScrollChangedListener;->onScrollChanged(IIII)V

    .line 3629
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 568
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_1

    .line 569
    :cond_0
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    .line 570
    :cond_1
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x20c

    .line 546
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isWebCoreReady()Z

    move-result v7

    .line 547
    .local v7, bReady:Z
    if-eqz v7, :cond_0

    .line 548
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 552
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 555
    if-nez p1, :cond_1

    .line 556
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 557
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 560
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v7, :cond_2

    .line 561
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v5, 0xfa

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 562
    :cond_2
    return-void
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 2

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x225

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1704
    return-void
.end method

.method public pastePlainText()V
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1696
    return-void
.end method

.method public pasteWithStyle()V
    .locals 2

    .prologue
    .line 1699
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1700
    return-void
.end method

.method pauseSelectionUI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 3636
    iput-boolean v1, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    .line 3637
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 3638
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 3640
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 3641
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 3642
    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 0
    .parameter "nTextWrapWidth"

    .prologue
    .line 3851
    invoke-super {p0, p1}, Landroid/webkit/WebView;->pauseTextReflow(I)V

    .line 3852
    return-void
.end method

.method public performLongClick()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3097
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->requestFocus()Z

    .line 3113
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v1, :cond_1

    .line 3114
    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 3116
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 3117
    iput-boolean v4, p0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    .line 3118
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mLastTouchX:I

    iget v2, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/EditableWebView;->mLastTouchY:I

    iget v3, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 3122
    invoke-virtual {p0, v5}, Landroid/webkit/EditableWebView;->performHapticFeedback(I)Z

    .line 3123
    return v4
.end method

.method rescanSpellings()V
    .locals 3

    .prologue
    .line 3949
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v0

    .line 3950
    .local v0, locale:Ljava/util/Locale;
    iget-object v2, p0, Landroid/webkit/EditableWebView;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3951
    :cond_0
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->setLocale(Ljava/util/Locale;)V

    .line 3959
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3962
    :goto_1
    return-void

    .line 3953
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v1

    .line 3954
    .local v1, spellCheckerActivated:Z
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3955
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->resetSession()V

    goto :goto_0

    .line 3961
    .end local v1           #spellCheckerActivated:Z
    :cond_3
    iget-object v2, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->rescanSpellings()V

    goto :goto_1
.end method

.method resetSession()V
    .locals 2

    .prologue
    const/16 v1, 0x138a

    .line 4008
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4009
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4010
    return-void
.end method

.method resumeSelctionUI()V
    .locals 4

    .prologue
    const/16 v3, 0x2ebc

    .line 3645
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    if-nez v0, :cond_0

    .line 3648
    :goto_0
    return-void

    .line 3646
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3647
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public resumeTextReflow()V
    .locals 0

    .prologue
    .line 3855
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTextReflow()V

    .line 3856
    return-void
.end method

.method scheduleNextBatchSpellCheck()V
    .locals 9

    .prologue
    const/16 v3, 0x1e

    const/4 v8, 0x0

    .line 3978
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 3981
    .local v3, size:I
    :goto_0
    new-array v4, v3, [Landroid/view/textservice/TextInfo;

    .line 3983
    .local v4, textInfos:[Landroid/view/textservice/TextInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 3984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v0, v5

    .line 3985
    .local v0, cookie:I
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/EditableWebView$SpellCheckItem;

    .line 3986
    .local v2, item:Landroid/webkit/EditableWebView$SpellCheckItem;
    new-instance v5, Landroid/view/textservice/TextInfo;

    iget-object v6, v2, Landroid/webkit/EditableWebView$SpellCheckItem;->mWord:Ljava/lang/String;

    const v7, 0x1c5ea

    invoke-direct {v5, v6, v0, v7}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v1

    .line 3987
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3988
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3989
    const-string v5, "KENLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduleNextBatchSpellCheck: word# "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/webkit/EditableWebView$SpellCheckItem;->mWord:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tcookie# "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3978
    .end local v0           #cookie:I
    .end local v1           #i:I
    .end local v2           #item:Landroid/webkit/EditableWebView$SpellCheckItem;
    .end local v3           #size:I
    .end local v4           #textInfos:[Landroid/view/textservice/TextInfo;
    :cond_0
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mBatchSpellCheckPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 3992
    .restart local v1       #i:I
    .restart local v3       #size:I
    .restart local v4       #textInfos:[Landroid/view/textservice/TextInfo;
    :cond_1
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v6, 0x5

    invoke-virtual {v5, v4, v6, v8}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    .line 3993
    return-void
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 1
    .parameter "allow"
    .parameter "threshold"
    .parameter "l"

    .prologue
    .line 3395
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 3396
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->setOverScrollMode(I)V

    .line 3397
    iput-object p3, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 3398
    iput p2, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    .line 3405
    :goto_0
    return-void

    .line 3401
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->setOverScrollMode(I)V

    .line 3402
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 3403
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    goto :goto_0
.end method

.method public final setCaretPos(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 3242
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3243
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3247
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2, v3}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 3248
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 6
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v2, 0x0

    .line 1521
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v3, :cond_0

    .line 1531
    :goto_0
    return v2

    .line 1524
    :cond_0
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 1525
    .local v1, s:I
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    add-int/lit8 v4, v1, 0x1

    const-class v5, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v3, v1, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    .line 1526
    .local v0, bg:[Landroid/text/style/BackgroundColorSpan;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 1527
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v4, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;I)V

    .line 1531
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1529
    :cond_1
    iget-object v2, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v3, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;)V

    goto :goto_1
.end method

.method setCurrentEditingNodeText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1042
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mEditingText:Ljava/lang/String;

    .line 1043
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    if-ne v0, p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    .line 288
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewCore;->setEditable(Z)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3843
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3158
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    .line 3159
    return-void
.end method

.method public setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3134
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    .line 3135
    return-void
.end method

.method public setOnScrollChangedListener(Landroid/webkit/EditableWebView$OnScrollChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3618
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    .line 3619
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3670
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    .line 3671
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 3823
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setScaleWithoutCheck(Z)V

    .line 3824
    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0
    .parameter "willDraw"

    .prologue
    .line 3827
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    .line 3828
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 0
    .parameter "fLower"

    .prologue
    .line 3839
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomLowerBound(F)V

    .line 3840
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 0
    .parameter "fUpper"

    .prologue
    .line 3835
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomUpperBound(F)V

    .line 3836
    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 5

    .prologue
    .line 3789
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 3790
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3791
    .local v2, region:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 3792
    invoke-direct {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3793
    .local v0, adjustedRegion:Landroid/graphics/Rect;
    sget v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getAnchorDrawableHeight()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0x1

    .line 3794
    .local v1, offset:I
    const/4 v3, 0x0

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3795
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v3, :cond_0

    .line 3796
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v3, v0, p0}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 3799
    :cond_0
    return-void
.end method

.method protected singleTapInEditableWebView()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x1

    .line 3861
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isSessionActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3862
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->checkCurrentSpell(Z)V

    .line 3874
    :goto_0
    return-void

    .line 3864
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3865
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3866
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3867
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3869
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3870
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 3871
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 3872
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1629
    return-void
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1638
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1639
    return-void
.end method

.method public toggleStrikethrough()V
    .locals 2

    .prologue
    .line 1643
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1644
    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1634
    return-void
.end method

.method public final transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 3
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 3224
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3226
    .local v0, target:Landroid/graphics/Point;
    if-eqz p2, :cond_0

    .line 3227
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3232
    :goto_0
    return-object v0

    .line 3229
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public final transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 5
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 3205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3207
    .local v0, target:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 3208
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3214
    :goto_0
    return-object v0

    .line 3211
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected updateContentFromMessage(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 643
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 645
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 646
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 649
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 650
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 651
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 652
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    .line 653
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    .line 656
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    if-eqz v1, :cond_2

    .line 657
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, v2, Landroid/webkit/HTCWebCore;->mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

    iget v2, v2, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    invoke-interface {v1, p0, v2}, Landroid/webkit/EditableWebView$OnContentChangedListener;->onContentChanged(Landroid/webkit/WebView;I)V

    .line 658
    :cond_2
    return-void
.end method

.method updatePositionRect()V
    .locals 0

    .prologue
    .line 1048
    invoke-super {p0}, Landroid/webkit/WebView;->updatePositionRect()V

    .line 1049
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->updateVSbound()V

    .line 1050
    return-void
.end method

.method protected updateTextAndSelection(III)V
    .locals 19
    .parameter "nodePointer"
    .parameter "startIndx"
    .parameter "endIndx"

    .prologue
    .line 664
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mEditingNode:I

    .line 668
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/EditableWebView;->mEditingText:Ljava/lang/String;

    .line 670
    .local v7, nodeTxt:Ljava/lang/String;
    sget-boolean v15, Landroid/webkit/EditableWebView;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 671
    const-string v15, "EditableWebView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[EditableWebView::updateTextSelectionFromMessage] >> mSelection.mode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    if-nez v7, :cond_a

    .line 674
    const-string v7, ""

    .line 675
    const/16 p3, 0x0

    move/from16 p2, p3

    .line 680
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v15, :cond_b

    .line 681
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    .line 682
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 690
    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 693
    .local v8, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v14

    .line 694
    .local v14, type:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    .line 695
    sget-boolean v15, Landroid/webkit/EditableWebView;->DEBUG:Z

    if-eqz v15, :cond_1

    .line 696
    const-string v15, "EditableWebView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[EditableWebView::updateTextSelectionFromMessage] >> startIndx="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndx="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " nodeTxt length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    const/4 v3, 0x0

    .line 702
    .local v3, doDoubleTap:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    :cond_2
    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    .line 704
    const/4 v3, 0x1

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    if-eqz v15, :cond_3

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 709
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v15, :cond_4

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 748
    :cond_4
    :goto_2
    const/4 v9, 0x0

    .line 749
    .local v9, renewTimestamp:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v15, :cond_6

    .line 751
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/EditableWebView;->mStartIndex:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/EditableWebView;->mEndIndex:I

    move/from16 v0, p3

    if-eq v15, v0, :cond_11

    :cond_5
    const/4 v9, 0x1

    .line 753
    :cond_6
    :goto_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mStartIndex:I

    .line 754
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mEndIndex:I

    .line 757
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 759
    const/16 v15, 0x73

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v11

    .line 760
    .local v11, start:Landroid/graphics/Rect;
    const/16 v15, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 761
    .local v4, end:Landroid/graphics/Rect;
    const/16 v15, 0x78

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 762
    .local v5, extend:Landroid/graphics/Rect;
    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_12

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 764
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 771
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 772
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 774
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15, v11, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 777
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    move/from16 v6, p3

    .line 778
    .local v6, indx:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    if-le v6, v15, :cond_8

    .line 779
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v6

    .line 781
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v15, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 782
    if-eqz v9, :cond_9

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    .line 789
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    .line 843
    .end local v4           #end:Landroid/graphics/Rect;
    .end local v5           #extend:Landroid/graphics/Rect;
    .end local v6           #indx:I
    .end local v11           #start:Landroid/graphics/Rect;
    :goto_6
    return-void

    .line 678
    .end local v3           #doDoubleTap:Z
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v9           #renewTimestamp:Z
    .end local v14           #type:I
    :cond_a
    const/16 v15, 0xa0

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 685
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->clear()V

    .line 686
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->clearSpans()V

    .line 687
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 714
    .restart local v3       #doDoubleTap:Z
    .restart local v8       #r:Landroid/graphics/Rect;
    .restart local v14       #type:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->shortTapOnWebView:Z

    if-eqz v15, :cond_10

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/EditableWebView$QuickSelectionED;->hideQuickActions(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v15, :cond_d

    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v15}, Landroid/webkit/WebView$WrapActions;->finish()V

    .line 723
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 726
    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->shortTapOnWebView:Z

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v10

    .line 730
    .local v10, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 731
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    goto/16 :goto_2

    .line 732
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->SPELL_CHECK:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 734
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    sget v17, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 739
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x65

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 741
    .end local v10           #result:Landroid/webkit/WebView$HitTestResult;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 744
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    goto/16 :goto_2

    .line 751
    .restart local v9       #renewTimestamp:Z
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 765
    .restart local v4       #end:Landroid/graphics/Rect;
    .restart local v5       #extend:Landroid/graphics/Rect;
    .restart local v11       #start:Landroid/graphics/Rect;
    :cond_12
    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_13

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 767
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    goto/16 :goto_4

    .line 770
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    goto/16 :goto_4

    :cond_14
    move/from16 v6, p2

    .line 777
    goto/16 :goto_5

    .line 793
    .end local v4           #end:Landroid/graphics/Rect;
    .end local v5           #extend:Landroid/graphics/Rect;
    .end local v11           #start:Landroid/graphics/Rect;
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 794
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 818
    :cond_16
    :goto_7
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_17

    .line 819
    move/from16 v12, p2

    .line 820
    .local v12, temp:I
    move/from16 p2, p3

    .line 821
    move/from16 p3, v12

    .line 823
    .end local v12           #temp:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v13

    .line 824
    .local v13, textLen:I
    move/from16 v0, p3

    if-le v0, v13, :cond_19

    .line 825
    sget-boolean v15, Landroid/webkit/EditableWebView;->DEBUG:Z

    if-eqz v15, :cond_18

    .line 826
    const-string v15, "EditableWebView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[EditableWebView::updateTextSelectionFromMessage] >> endIndx="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mText.length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_18
    sub-int v2, p3, p2

    .line 830
    .local v2, dist:I
    move/from16 p3, v13

    .line 831
    sub-int p2, p3, v2

    .line 832
    if-gez p2, :cond_19

    .line 833
    const/16 p2, 0x0

    .line 835
    .end local v2           #dist:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v15, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 836
    invoke-direct/range {p0 .. p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    .line 838
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    if-nez v15, :cond_1a

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 842
    :cond_1a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    goto/16 :goto_6

    .line 796
    .end local v13           #textLen:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->SPELL_CHECK:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/webkit/EditableWebView;->showSuggestionWindow(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 800
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 801
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 805
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    if-eqz v15, :cond_16

    .line 806
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    if-eqz v15, :cond_1e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v0, p2

    if-gt v0, v15, :cond_1e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v0, p2

    if-eq v0, v15, :cond_1d

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e

    .line 808
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    .line 809
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->showSingleTapQuickActions()V

    .line 810
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x66

    const-wide/16 v17, 0xbb8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 812
    :cond_1e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    goto/16 :goto_7
.end method

.method updateVSbound()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView;->mVStype:I

    .line 1054
    return-void
.end method
