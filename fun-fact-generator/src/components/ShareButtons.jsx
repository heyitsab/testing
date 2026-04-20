import { useState } from 'react';

export default function ShareButtons({ fact }) {
  const [copied, setCopied] = useState(false);

  if (!fact) return null;

  const shareText = `💡 Fun Fact: ${fact.text}`;

  async function handleCopy() {
    try {
      await navigator.clipboard.writeText(shareText);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      // fallback for environments where clipboard API is unavailable
      const el = document.createElement('textarea');
      el.value = shareText;
      document.body.appendChild(el);
      el.select();
      document.execCommand('copy');
      document.body.removeChild(el);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    }
  }

  const twitterUrl = `https://twitter.com/intent/tweet?text=${encodeURIComponent(shareText)}`;

  return (
    <div className="share-buttons">
      <button className="btn-share" onClick={handleCopy}>
        {copied ? '✓ Copied!' : '📋 Copy'}
      </button>
      <a
        className="btn-share"
        href={twitterUrl}
        target="_blank"
        rel="noopener noreferrer"
      >
        𝕏 Share
      </a>
    </div>
  );
}
